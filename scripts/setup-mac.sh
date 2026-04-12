#!/bin/bash
# Setup script for macOS
# Installs tools and VS Code extensions needed for the hackathon

set -e

echo "=== Hackathon Setup (macOS) ==="
echo ""

# --- Homebrew ---
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✓ Homebrew already installed"
fi

# --- Git ---
if ! command -v git &> /dev/null; then
    echo "Installing Git..."
    brew install git
else
    echo "✓ Git already installed ($(git --version))"
fi

# --- Python 3 ---
if ! command -v python3 &> /dev/null; then
    echo "Installing Python 3..."
    brew install python
else
    echo "✓ Python 3 already installed ($(python3 --version))"
fi

# --- Node.js (for npx) ---
if ! command -v node &> /dev/null; then
    echo "Installing Node.js..."
    brew install node
else
    echo "✓ Node.js already installed ($(node --version))"
fi

# --- VS Code ---
if ! command -v code &> /dev/null; then
    echo ""
    echo "⚠ VS Code 'code' command not found."
    echo "  Open VS Code → Cmd+Shift+P → 'Shell Command: Install code command in PATH'"
    echo "  Then re-run this script to install extensions."
    echo ""
else
    echo "✓ VS Code CLI available"
    echo ""
    echo "Installing VS Code extensions..."

    extensions=(
        "github.copilot"
        "github.copilot-chat"
        "ritwickdey.liveserver"
        "ms-python.python"
    )

    for ext in "${extensions[@]}"; do
        if code --list-extensions | grep -qi "$ext"; then
            echo "  ✓ $ext already installed"
        else
            echo "  Installing $ext..."
            code --install-extension "$ext" --force
        fi
    done
fi

echo ""
echo "=== Setup Complete ==="
echo ""
echo "Next steps:"
echo "  1. Open VS Code"
echo "  2. Sign in with your GitHub account (for Copilot)"
echo "  3. Copy a starter template:  cp -r starters/browser-app my-project"
echo "  4. Open your project folder in VS Code and start building!"
echo ""
