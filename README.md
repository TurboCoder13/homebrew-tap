<p align="center">
  <h1 align="center">Homebrew Tap for Lintro</h1>
  <p align="center">
    Install <a href="https://github.com/lgtm-hq/py-lintro">lintro</a> on macOS via Homebrew
  </p>
</p>

---

## Table of Contents

- [Installation](#installation)
- [Upgrading](#upgrading)
- [Usage](#usage)
- [Included Tools](#included-tools)
- [Requirements](#requirements)
- [Documentation](#documentation)
- [Contributing](#contributing)
- [License](#license)

---

## Installation

```bash
brew tap lgtm-hq/tap
brew install lintro
```

## Upgrading

```bash
brew update
brew upgrade lintro
```

## Usage

| Command             | Description                  |
| ------------------- | ---------------------------- |
| `lintro check`      | Check files for issues       |
| `lintro format`     | Auto-fix formatting issues   |
| `lintro list-tools` | View available linting tools |
| `lintro --version`  | Check installed version      |

## Included Tools

Lintro bundles these tools for unified code quality:

| Tool           | Purpose                        |
| -------------- | ------------------------------ |
| **ruff**       | Python linter and formatter    |
| **black**      | Python code formatter          |
| **bandit**     | Python security linter         |
| **darglint**   | Python docstring linter        |
| **hadolint**   | Dockerfile linter              |
| **actionlint** | GitHub Actions workflow linter |
| **prettier**   | Multi-language code formatter  |
| **yamllint**   | YAML linter                    |

## Requirements

| Requirement | Version |
| ----------- | ------- |
| macOS       | 10.15+  |
| Homebrew    | Latest  |

## Documentation

- [Lintro Documentation](https://github.com/lgtm-hq/py-lintro/tree/main/docs)
- [Lintro Repository](https://github.com/lgtm-hq/py-lintro)

## Formula Maintenance

This formula is automatically updated when new versions are released to PyPI. The update process is handled by GitHub Actions in the [py-lintro repository](https://github.com/lgtm-hq/py-lintro).

---

## Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<p align="center">
  <a href="https://github.com/lgtm-hq/py-lintro">Lintro</a> · <a href="https://github.com/lgtm-hq/homebrew-tap/issues">Issues</a> · <a href="CONTRIBUTING.md">Contributing</a>
</p>
