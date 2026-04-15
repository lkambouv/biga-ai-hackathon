# Biga Hackathon – AI for Team Leads & Product Owners

A 2-hour hands-on hackathon focused on building simple prototypes using GitHub Copilot as your AI-powered development partner. No prior coding experience required.

## What You'll Do

Pick a case relevant to your role as a team lead or product owner, then use GitHub Copilot to help you build a working prototype. You'll learn how to describe what you want, break it into tasks, and let AI help you code it — step by step.

> **Important constraint:** We build prototypes _without_ AI/LLM API calls in the application itself. GitHub Copilot is used at _development time_ to help you code faster. The "intelligence" in your solution comes from structure, rules, scoring, and templates.

---

## Prerequisites

Complete these steps **before** the hackathon.

### 1. Install VS Code

Download and install [Visual Studio Code](https://code.visualstudio.com/Download) for your operating system.

### 2. GitHub Account

You need a GitHub account connected to Bouvet.
Those of you with access through Github Copilot Enterprise through other channels (access through delivery/client etc.) can use this if it's aligned with usage guidelines for that delivery/client.
See FAQ https://minside.bouvet.no/metoder/GitHub%20Enterprise

### 3. Get GitHub Copilot Access

Request Bouvet GitHub Copilot by following the guid
https://minside.bouvet.no/metoder/GitHub%20Enterprise

Once you have access, install the **GitHub Copilot** extension in VS Code and sign in with your GitHub account.

### 4. Get the Repository

**Option A — Clone with Git** (if Git is installed):
```bash
git clone <repo-url>
cd biga-hackathon
```

**Option B — Download as ZIP** (no Git needed):
1. Go to the repository page on GitHub
2. Click the green **Code** button → **Download ZIP**
3. Extract the ZIP and open the folder in VS Code

### 5. Install Tools

You can install the required tools either manually or via Copilot Agent.

**Option A — Using Copilot Agent** (recommended):
1. Open the project folder in VS Code
2. Open Copilot Agent (Cmd+Shift+I on macOS / Ctrl+Shift+I on Windows)
3. Type: `/setup-environment`
4. Copilot will detect your OS and run the correct setup script

**Option B — Run the script manually:**

macOS:
```bash
chmod +x scripts/setup-mac.sh
./scripts/setup-mac.sh
```

Windows (PowerShell):
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\scripts\setup-windows.ps1
```

3. **Pick a starter template** — copy it to a new folder for your project:
   - `starters/browser-app/` — HTML + JavaScript, runs directly in the browser, zero setup
   - `starters/python-app/` — Python + Flask, good for data processing and structured logic

   ```bash
   cp -r starters/browser-app my-project
   ```

4. **Edit `specs.md`** in your project folder — describe what you want to build

5. **Edit `todo.md`** — break your spec into small tasks

6. **Open VS Code and start building with Copilot**
   - Open the project folder in VS Code
   - Use **Copilot Agent mode** (Cmd/Ctrl+Shift+I) to start working through your tasks
   - Point Copilot to your `specs.md` and `todo.md` for context

---

## Repo Overview

| Path | Description |
|------|-------------|
| [`docs/ai-workflow.md`](docs/ai-workflow.md) | How to work effectively with AI in VS Code |
| [`docs/extensions.md`](docs/extensions.md) | Recommended VS Code extensions |
| [`docs/tech-stacks.md`](docs/tech-stacks.md) | Guide to choosing a tech stack |
| [`starters/browser-app/`](starters/browser-app/) | Minimal HTML+JS+CSS starter template |
| [`starters/python-app/`](starters/python-app/) | Minimal Python/Flask starter template |
| [`scripts/`](scripts/) | Setup scripts for macOS and Windows |
| `.github/copilot-instructions.md` | Repo-level context for GitHub Copilot |

---

## Tips for the Hackathon

1. **Start small** — Get one thing working before adding more. A form that takes input and shows output is a great first milestone.
2. **Write clear specs** — The better you describe what you want in `specs.md`, the better Copilot can help you.
3. **Use Agent mode** — Copilot Agent mode can make changes across multiple files and run commands for you.
4. **Iterate** — Don't try to build everything at once. Build, test, refine.
5. **Ask for help** — Mentors are available in the room. Don't spend more than 5 minutes stuck.
6. **It's about learning** — The goal is to experience AI-assisted development, not to ship production code.
