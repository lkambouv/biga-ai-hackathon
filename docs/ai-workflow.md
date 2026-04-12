# Working with AI in VS Code

This guide explains how to use GitHub Copilot effectively to build your hackathon prototype. The key idea: **you describe what you want, AI helps you build it.**

## The Core Workflow

```
specs.md  →  todo.md  →  Build with Copilot  →  Test  →  Iterate
```

1. **Write your spec** (`specs.md`) — Describe _what_ you want to build
2. **Break it into tasks** (`todo.md`) — List small, concrete steps
3. **Build with Copilot** — Use Agent mode to work through your tasks
4. **Test** — Open your app and verify it works
5. **Iterate** — Refine your spec, add tasks, keep building

---

## Key Files Copilot Uses

### `.instructions.md` — Project Context

This file tells Copilot _how_ to work in your project. It's automatically picked up when Copilot generates code. Each starter template includes one. Example:

```markdown
- This is a browser-only app using vanilla JavaScript, HTML, and CSS
- Keep code simple and well-commented
- Use in-memory arrays for data storage
- No external API calls or frameworks
```

### `specs.md` — What You're Building

Describe your application: the problem it solves, who it's for, what features it should have, and what the UI looks like. The more concrete, the better Copilot can help. Example:

```markdown
## Problem
Team leads need a simple way to track signals of team stress and link them to actions.

## Features
- Form to register observations (situation, signal type, severity)
- Dashboard showing all registered signals
- Suggested actions based on signal type and severity

## Data Model
- Signal: { id, date, situation, type, severity, frequency }
- Action: { id, signalType, description, priority }
```

### `todo.md` — Your Task Breakdown

Break your spec into small, concrete tasks. Check them off as you go. Copilot can read this file to understand what you're working on. Example:

```markdown
- [x] Create basic HTML page with navigation
- [x] Add signal registration form
- [ ] Store signals in an in-memory array
- [ ] Display signals in a table
- [ ] Add rule engine to suggest actions
- [ ] Show suggested actions below the signal table
```

---

## Using Copilot Agent Mode

Agent mode is the most powerful way to work with Copilot for building features. It can:
- Read your files for context
- Write and edit code across multiple files
- Run terminal commands
- Iterate on errors automatically

### How to use it

1. Press **Cmd+Shift+I** (macOS) or **Ctrl+Shift+I** (Windows) to open Copilot Agent
2. Tell it what you want to do, referencing your files:

   > "Read specs.md and todo.md. Implement the next unchecked task."

3. Review the changes Copilot suggests, then accept or ask for adjustments

### Tips for good prompts

| Instead of... | Try... |
|---|---|
| "Make a website" | "Create an HTML page with a form that has fields for: situation (text), signal type (dropdown), and severity (low/medium/high)" |
| "Add a feature" | "Add a function that takes an array of signals and returns the ones with severity 'high' that are recurring" |
| "Fix the bug" | "The form submits but nothing appears in the table. Check that the submit handler adds to the signals array and re-renders the table" |

### Key principles

- **Be specific** — Describe exactly what you want, including field names, data types, and behavior
- **Work in small steps** — One task at a time. Build, verify, then move on.
- **Give context** — Reference your `specs.md` and `todo.md` so Copilot knows the big picture
- **Iterate** — If the result isn't right, describe what's wrong and ask Copilot to adjust

---

## Other Ways to Use Copilot

### Inline Suggestions
As you type code, Copilot suggests completions. Press **Tab** to accept. Useful for:
- Completing repetitive patterns
- Writing boilerplate HTML/CSS
- Implementing functions when you've written a descriptive comment

### Copilot Chat (Sidebar)
Press **Cmd+Shift+P** → "Copilot Chat" to open the chat panel. Good for:
- Asking questions about code ("What does this function do?")
- Getting explanations ("Explain how localStorage works")
- Brainstorming ("What's a good data model for tracking team signals?")

### Inline Chat
Select code and press **Cmd+I** (macOS) or **Ctrl+I** (Windows). Good for:
- Refactoring selected code
- Adding error handling to a specific function
- Converting code from one style to another

---

## Reminder: No AI APIs in Your App

Your prototype should **not** call external AI services (OpenAI, etc.) at runtime. The "intelligence" in your solution comes from:

- **Rules** — If severity is high AND frequency is recurring → flag for immediate follow-up
- **Scoring** — Calculate weighted scores from multiple inputs
- **Templates** — Pre-defined text structures with dynamic values
- **Mappings** — Signal type → suggested actions lookup table

GitHub Copilot helps you _write_ this logic — but the logic itself is straightforward code.
