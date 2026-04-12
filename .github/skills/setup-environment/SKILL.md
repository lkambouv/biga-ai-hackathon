---
name: setup-environment
description: "Install development tools and VS Code extensions for this project. Use when: setting up environment, installing tools, installing extensions, first-time setup, onboarding."
argument-hint: "Run this to install Git, Python, Node.js, and recommended VS Code extensions"
---

# Setup Environment

Install all required tools and VS Code extensions for this project.

## When to Use
- First time opening this project
- Setting up a new machine
- When tools or extensions are missing

## Procedure

1. Detect the operating system by running a terminal command:
   - macOS/Linux: `uname -s`
   - If that fails or returns something with "MINGW" or "MSYS", it's Windows

2. Run the appropriate setup script from the project root:
   - **macOS**: Run `scripts/setup-mac.sh` in the terminal:
     ```bash
     chmod +x scripts/setup-mac.sh && ./scripts/setup-mac.sh
     ```
   - **Windows**: Run `scripts/setup-windows.ps1` in PowerShell:
     ```powershell
     Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; .\scripts\setup-windows.ps1
     ```

3. Report what was installed and any errors to the user.
