# typed: false
# frozen_string_literal: true

# Homebrew formula for lintro binary distribution
# Auto-generated - do not edit manually
class LintroBin < Formula
  desc "Unified CLI for code quality (binary)"
  homepage "https://github.com/lgtm-hq/py-lintro"
  version "0.52.7"
  license "MIT"

  RELEASE_BASE = "https://github.com/lgtm-hq/py-lintro/releases"

  on_macos do
    on_arm do
      url "\#{RELEASE_BASE}/download/v\#{version}/lintro-macos-arm64"
      sha256 "882ea8c30e94515f71f6fffa66b7b7889fd4d17bb0c569bc3b50cfc2e0f106a5"
    end
    on_intel do
      url "\#{RELEASE_BASE}/download/v\#{version}/lintro-macos-x86_64"
      sha256 "30515cb4ce675b4ec8582e3ae881f981feb757e0b2988ee36b41978b48d96a87"
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
    assert_match version.to_s, shell_output("\#{bin}/lintro --version")
  end
end
