# typed: false
# frozen_string_literal: true

# Homebrew formula for lintro binary distribution
# Auto-generated - do not edit manually
class LintroBin < Formula
  desc "Unified CLI for code quality (binary)"
  homepage "https://github.com/lgtm-hq/py-lintro"
  version "0.54.0"
  license "MIT"

  RELEASE_BASE = "https://github.com/lgtm-hq/py-lintro/releases"

  on_macos do
    on_arm do
      url "#{RELEASE_BASE}/download/v#{version}/lintro-macos-arm64"
      sha256 "29479c5687c1515e6e3d9a736026a5f70db3f7ccc94486c6baaa12ce10b0a6b4"
    end
    on_intel do
      url "#{RELEASE_BASE}/download/v#{version}/lintro-macos-x86_64"
      sha256 "fe76070c290c7e6282853d090b3bbf76134769d5d9c7db715ee8c0a130f0a22c"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lintro-macos-arm64" => "lintro"
    else
      bin.install "lintro-macos-x86_64" => "lintro"
    end
  end

  def caveats
    <<~EOS
      lintro-bin is a standalone binary that doesn't require Python.

      The external tools (ruff, black, mypy, etc.) must be installed
      separately:
        brew install ruff black mypy

      For the Python version with bundled tools:
        brew install lgtm-hq/tap/lintro
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lintro --version")
  end
end
