# Choosing a Tech Stack

This repo includes two starter templates. Pick the one that fits your comfort level and case best — or use any other stack you're familiar with.

## Option 1: Browser App (HTML + JavaScript + CSS)

**Best for:** UI-focused cases, visual dashboards, forms with immediate feedback.

| Aspect | Details |
|---|---|
| Setup | None — open `index.html` in a browser |
| Data storage | In-memory JavaScript arrays (data resets on page refresh) |
| Languages | HTML, CSS, JavaScript |
| Frameworks | None (vanilla JS) |
| Good for cases about | Prioritization tools, one-pagers, risk dashboards, any visual/interactive tool |

**Pros:**
- Zero setup required — works immediately
- Easy to see results — just refresh the browser
- Live Server extension gives auto-reload

**Cons:**
- Data doesn't persist between page loads (unless you add localStorage)
- Harder to do complex data processing

**Getting started:**
```bash
cp -r starters/browser-app my-project
cd my-project
# Open index.html in browser, or right-click → "Open with Live Server" in VS Code
```

---

## Option 2: Python App (Flask)

**Best for:** Data processing, structured logic, rule engines, text transformation.

| Aspect | Details |
|---|---|
| Setup | Install Python, run `pip install -r requirements.txt` |
| Data storage | In-memory Python lists/dicts (data resets on server restart) |
| Languages | Python, HTML (Jinja2 templates) |
| Frameworks | Flask (minimal web framework) |
| Good for cases about | Text structuring, signal analysis, scoring engines, anything with complex logic |

**Pros:**
- Python is beginner-friendly and readable
- Easy to implement complex rules and data processing
- Copilot is excellent at generating Python

**Cons:**
- Requires Python installation
- Need to restart server to see backend changes (frontend changes are instant)

**Getting started:**
```bash
cp -r starters/python-app my-project
cd my-project
pip install -r requirements.txt
python app.py
# Open http://localhost:5000 in your browser
```

---

## Can I Use Something Else?

Absolutely. If you're comfortable with another stack (React, Node.js, etc.), go for it. The key files that help Copilot understand your project work the same regardless:

- `specs.md` — Describe what you're building
- `todo.md` — Break it into tasks
- `.instructions.md` — Tell Copilot about your tech stack

Just create these files in your project folder and you're good to go.

---

## Quick Decision Guide

```
Are you comfortable running terminal commands?
├── No  → Browser App
└── Yes
    ├── Is your case mostly UI/visual? → Browser App
    └── Is your case mostly logic/data? → Python App
```
