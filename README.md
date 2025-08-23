# macOS Security Scripts

[![Project Tracker](https://img.shields.io/badge/repo%20status-Project%20Tracker-lightgrey)](https://hthompson.dev/project-tracker#project-181943535)
[![Style Guide](https://img.shields.io/badge/code%20style-Style%20Guide-blueviolet)](https://bsg.hthompson.dev)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/c0f5a6bf7e2e4a688c919aff51375648)](https://www.codacy.com/gh/StrangeRanger/macos-security-scripts/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=StrangeRanger/macos-security-scripts&amp;utm_campaign=Badge_Grade)

This repository is a collection of scripts designed to secure/harden macOS.

<details>
<summary><strong>Table of Contents</strong></summary>

- [macOS Security Scripts](#macos-security-scripts)
  - [Tools and Scripts](#tools-and-scripts)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Download and Setup](#download-and-setup)
  - [Usage](#usage)
  - [Tested On](#tested-on)
  - [Other Resources](#other-resources)
  - [Support and Issues](#support-and-issues)
  - [License](#license)

</details>

## Tools and Scripts

Below is a list of tools included in this repository.

| Tool Name | Description | Category | Requirements | Notes |
|-----------|-------------|----------|--------------|-------|
| **[Root Locker](hardening/Root%20Locker/root-locker.bash)** | Locks the root account to prevent direct logins. | Hardening | Root privileges | Preserves sudo access |

> [!NOTE]
> All scripts include version information in their headers. Check individual CHANGELOG.md files in each tool's directory for version history and updates.

## Getting Started

### Prerequisites

The following requirements extend to every tool in this repository:

- **Bash**: Version 3.2 or higher
- **Operating System**: macOS

### Download and Setup

All you need to do is download this repository to your local machine:

```bash
git clone https://github.com/StrangeRanger/macos-security-scripts
cd macos-security-scripts
```

## Usage

You can run any script individually using one of the following methods:

```bash
./[script-name]
# OR
bash [script-name]
```

## Tested On

Below is a list of all the versions of macOS that the security scripts have been officially tested and are confirmed to work on.

- macOS 15 (Sequoia)
- macOS 14 (Sonoma)
- macOS 13 (Ventura)
- macOS 12 (Monterey)
- macOS 11 (Big Sur)

## Other Resources

While this repository has scripts that can help secure macOS, it doesn't cover everything. Below are some other resources that can help you further secure your Mac:

- [macOS Security and Privacy Guide](https://github.com/drduh/macOS-Security-and-Privacy-Guide) - A resource with a lot of good advice on how to increase the privacy and security of your Mac.
- [Privacy.Sexy](https://github.com/undergroundwires/privacy.sexy) - Open-source tool to enforce privacy & security best-practices on Windows and macOS, because privacy is sexy 🍑🍆.

## Support and Issues

Please use [GitHub Issues](https://github.com/StrangeRanger/macos-security-scripts/issues) for bug reports and feature requests.

## License

Licensing may vary by tool; see individual file headers.
