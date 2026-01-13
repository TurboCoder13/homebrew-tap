# typed: false
# frozen_string_literal: true

# Homebrew formula for lintro - auto-generated on release
# Manual edits will be overwritten on next release
class Lintro < Formula
  include Language::Python::Virtualenv

  desc "Unified CLI tool for code formatting, linting, and quality assurance"
  homepage "https://github.com/TurboCoder13/py-lintro"
  url "https://files.pythonhosted.org/packages/11/ac/68fb00e57ea4e69e927c8e9c495591cbc127bd0748e9f68267918e248478/lintro-0.24.0.tar.gz"
  sha256 "223f64a4c7fc1279c94871bb49c984878a56971528ad6af06a128e84c782c1b4"
  license "MIT"

  livecheck do
    url :stable
    strategy :pypi
  end

  depends_on "actionlint"
  depends_on "hadolint"
  depends_on "prettier"
  depends_on "python@3.13"
  depends_on "ruff"



  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Lintro is now installed!

      Included tools:
        - ruff - Python linter and formatter
        - hadolint - Dockerfile linter
        - actionlint - GitHub Actions workflow linter
        - prettier - Code formatter
        - bandit - Python security linter
        - black - Python code formatter
        - darglint - Python docstring linter
        - yamllint - YAML linter

      Get started:
        lintro check          # Check files for issues
        lintro format         # Auto-fix issues
        lintro list-tools     # View available tools

      Documentation: https://github.com/TurboCoder13/py-lintro/tree/main/docs
    EOS
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/lintro --version")
  end
end
