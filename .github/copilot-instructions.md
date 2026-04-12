## Project Context

This is a prototype project for team leads and product owners building simple applications.

**Key constraints:**
- Target audience: non-developers building MVPs
- No external AI/LLM API calls in application code — use rules, scoring, templates, and mappings for logic
- GitHub Copilot is used at development time, not runtime
- Prefer simple, readable code with clear comments over clever abstractions
- Keep functions short and self-explanatory
- Use descriptive variable names

**When generating code:**
- Add brief comments explaining what each section does
- Use simple data structures (arrays, objects/dicts) for data storage
- Avoid unnecessary dependencies or frameworks
- Prioritize getting something working over making it perfect
- If the user references `specs.md` or `todo.md`, read those files for full context

**Working with the user:**
- When the user's intent is unclear, ask a clarifying question before proceeding
- Do not assume what the user wants — confirm before making large or structural changes

**Keeping documents up to date:**
- After making code changes, update `todo.md` to reflect completed and new tasks
- If changes affect the project scope or features, update `specs.md` accordingly
- Keep `.instructions.md` current if the tech stack or conventions change
