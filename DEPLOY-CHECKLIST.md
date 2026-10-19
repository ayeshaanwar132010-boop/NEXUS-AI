# Deployment checklist

## Render full-stack Docker service
- Push this folder's contents to a GitHub repository.
- Render → New → Blueprint → select the repository.
- Review the plan and persistent disk pricing before applying.
- After deployment, verify `/`, `/health`, `/docs`, memory create/list/delete, and task planning.
- Confirm the disk is mounted at `/var/data`; otherwise SQLite data will not be persistent.

## Taste Skill and Awesome Design MD
Run from the repository root:
```powershell
npx skills add https://github.com/Leonxlnx/taste-skill --skill "design-taste-frontend"
git clone --depth 1 https://github.com/VoltAgent/awesome-design-md.git
```
If `awesome-design-md` already exists, do not clone it again. Ask your coding agent to read `AI-DESIGN-WORKFLOW.md` and apply it to the existing React files. Installing design references alone does not change the UI.
