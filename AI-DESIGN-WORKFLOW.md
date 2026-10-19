# Use Taste Skill + Awesome Design MD with NEXUS AI

This workflow integrates two *design-time* resources into the project. They help your coding agent make and implement UI decisions; neither one automatically changes the app merely by being downloaded.

## 1. Open the project root

Extract this ZIP, open the `NEXUS-AI-Professional` folder in VS Code, then open a PowerShell terminal in that folder. Confirm that `frontend`, `backend`, and `DESIGN.md` are visible with:

```powershell
Get-ChildItem
```

## 2. Install Taste Skill

Run from the project root in a terminal where Node.js/npm are available:

```powershell
npx skills add https://github.com/Leonxlnx/taste-skill --skill "design-taste-frontend"
```

Follow any CLI prompts. This installs the design skill for the supported coding-agent environment; it is not a Python or React runtime dependency. Restart/reopen the coding-agent session if it does not detect the new skill.

## 3. Get the Awesome Design MD reference library

Run this as a separate command from the project root:

```powershell
git clone --depth 1 https://github.com/VoltAgent/awesome-design-md.git .design-references/awesome-design-md
```

If Git is unavailable, download the repository ZIP from GitHub and extract it to `.design-references/awesome-design-md`.

The library is a reference collection. Do not import its entire contents into the app bundle or copy a brand's identity wholesale. Choose one relevant reference and adapt its principles to the NEXUS AI brief.

## 4. Give this instruction to your coding agent

```text
You are working inside the existing NEXUS-AI-Professional project. Before editing, read README.md, DESIGN.md, and AI-DESIGN-WORKFLOW.md. Use the installed Taste Skill (design-taste-frontend) for visual art direction and critique. Inspect .design-references/awesome-design-md/REFERENCE_INDEX.md or the available index in that repository, then select at most one relevant design-system reference. Explain briefly which principles you will adapt; do not copy another brand's identity wholesale.

Treat the project-root DESIGN.md as the NEXUS AI visual source of truth. Update it only if you make a deliberate, coherent design decision. Implement the design in the actual React/TypeScript/CSS components, not only in markdown. Preserve the existing FastAPI endpoints, SQLite data, working interactions, and project structure unless a verified bug requires a change. Do not replace working features with static mockups or fake metrics.

Prioritize a memorable but disciplined animated Intelligence Core, legible telemetry, consistent navigation, polished memory/task/agent/automation workflows, clear loading/empty/error/success states, keyboard accessibility, visible focus, responsive layouts, and reduced-motion support. Every visible button must work or be clearly disabled with an explanation. Keep all external actions disabled unless explicitly implemented and protected by approval; exhibition simulations must be labeled as simulations.

First inspect the current implementation and propose a short plan. Then implement the changes, run the backend syntax/test checks and frontend typecheck/build available in package.json, fix failures, and report exactly what passed and what remains unverified. Do not claim browser testing unless you actually performed it.
```

## 5. Verify the result

Check the installed skill is visible to your agent, confirm the reference library is present, then ask the agent to state which reference it selected before it edits UI. After changes, run the app using the commands in README.md and test navigation, memory create/edit/delete, plan creation, task progression, and narrow-screen/reduced-motion behavior.

## NEXUS AI design guardrails

- Midnight interface with restrained cyan, violet, and mint accents.
- Orbital Intelligence Core is the signature interaction; animation should communicate state, not merely decorate.
- Data shown as live must come from the backend; label sample/demo values honestly.
- Keep deterministic planning distinct from any real LLM reasoning.
- Never claim an external email, report, or submission happened unless a real integration confirms it.
