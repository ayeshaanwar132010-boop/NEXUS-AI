# NEXUS AI — Deploy Guide

## Single-theme design
This project uses one consistent **Dark Modern** theme: navy background, violet primary, cyan accent, white text, and Inter typography. Keep this theme across all screens.

## Option A — Deploy the complete app as one service
The included Dockerfile builds the React frontend and serves it through the FastAPI backend. The included `render.yaml` is a Render Blueprint configuration.

1. Extract this folder and push its contents to a GitHub repository.
2. Open Render and create a new Blueprint from that repository.
3. Review the plan and disk settings before confirming. The configured persistent disk may require a paid plan; check the current price and terms first.
4. After deployment, open the service URL. Verify `/`, `/health`, and `/docs`.
5. Create a test memory and reload the page to check that the API works. Confirm persistence after a restart only if the service has its persistent disk mounted correctly.

## Option B — Netlify frontend + separately hosted API
Netlify only hosts the React frontend; it does not host FastAPI. Set `VITE_API_URL` in Netlify to the public HTTPS URL of the deployed API. Set `CORS_ORIGINS` on the backend to include the exact Netlify site origin. Rebuild and redeploy the frontend after changing `VITE_API_URL`.

## Local Windows run
Install Python 3.11+ and Node.js LTS.

Backend terminal:
```powershell
cd backend
py -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m uvicorn main:app --reload --port 8000
```

Frontend terminal:
```powershell
cd frontend
npm install
npm run dev
```

Open the Vite URL printed in the frontend terminal. API docs are at `http://127.0.0.1:8000/docs`.

## Tests
From the `backend` directory:
```powershell
python -m pytest -q
```
Tests use a temporary database. No private `.env` or personal database is needed.

## Important limitations
- The agent/planning behavior is deterministic and rule-based, not an autonomous LLM.
- Automation execution is simulated. The app does not send emails, call external services, or submit actions.
- This demo does not include user authentication. Do not expose sensitive or private data publicly until authentication, authorization, rate limiting, backups, and monitoring have been added.
- A SQLite database on ephemeral hosting can be lost during restarts or redeployments. Use persistent storage or a managed database for durable production data.
