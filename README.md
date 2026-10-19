# NEXUS AI — The Autonomous Intelligence Platform
**Think. Remember. Plan. Act. Improve.**

A React + TypeScript exhibition command center with a FastAPI backend and SQLite persistence. The planning and agent behavior is deterministic/rule-based; no paid AI API is required.

## Fastest local run (Windows)
1. Install Node.js LTS and Python 3.11+.
2. Double-click `START-NEXUS-LOCAL.bat`, or run the manual commands below.

Backend terminal:
```powershell
cd backend
py -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m uvicorn main:app --reload
```
Frontend terminal:
```powershell
cd frontend
npm install
npm run dev
```
Open the Vite URL shown in the terminal (usually http://localhost:5173). API docs: http://127.0.0.1:8000/docs.

## Deploy the complete app as one service (Render + Docker)
This repository includes `Dockerfile` and `render.yaml`. Push the extracted project to a GitHub repository, then in Render choose **New → Blueprint**, connect the repository, and apply the blueprint. The service builds the React frontend and serves it from FastAPI; `/health` is the health check and `/` opens the UI.

The Render blueprint requests a small persistent disk for SQLite. Persistent disks may require a paid Render plan and are not available on every free plan. If Render asks for billing details, do not proceed unless you are comfortable with the plan and price. Without persistent storage, SQLite data can be lost when an instance is replaced/redeployed.

## Netlify alternative (frontend only)
`netlify.toml` is included for the frontend. Deploying only to Netlify does **not** host FastAPI. You must separately deploy the backend and set the Netlify environment variable `VITE_API_URL` to its HTTPS base URL. Configure backend `CORS_ORIGINS` to include your Netlify domain.

## Included
- Animated responsive command center and intelligence visualization
- FastAPI system/health endpoints
- SQLite memory create/search/delete and JSON export in the UI
- Dependency-aware plans and five role-based agent roles
- Task coordination and audit events
- Automation rules with safe simulated test runs and approval-required-by-default records
- Reduced-motion and keyboard-focus styling
- Taste Skill + Awesome Design MD integration instructions

## Design resources
See `AI-DESIGN-WORKFLOW.md` and `DESIGN.md`. These are instructions/references; they do not automatically modify source code. To apply them, install the Taste Skill in your chosen coding agent and ask it to follow `AI-DESIGN-WORKFLOW.md` while editing the project. The Awesome Design MD repository can be cloned separately for its reference files.

## Safety and limitations
- Automation runs are simulations; no external email, API call, account access, or submission is performed.
- Planning and agent behavior are rule-based, not an LLM and not a claim of perfect accuracy or autonomous consciousness.
- Before using publicly with sensitive users or data, add authentication, authorization, rate limits, monitoring, backups, and production-grade approval controls.


## Backend tests

From the `backend` directory, install dependencies and run `python -m pytest`. The tests use a temporary database and do not require a private `.env` file or an existing project database.

## Safe archive contents

This archive intentionally excludes virtual environments, Python bytecode/cache folders, real `.env` files, and SQLite/database files. `.env.example` templates are included.
