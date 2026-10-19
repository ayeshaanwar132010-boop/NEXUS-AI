\
    @echo off
    title NEXUS AI - Local Launcher
    echo Starting NEXUS AI backend...
    cd /d "%~dp0"
    if not exist "backend\.venv\Scripts\python.exe" (
      py -m venv backend\.venv
      backend\.venv\Scripts\python.exe -m pip install -r backend\requirements.txt
    )
    start "NEXUS AI Backend" cmd /k "cd /d "%~dp0backend" && ..\backend\.venv\Scripts\python.exe -m uvicorn main:app --reload"
    echo Installing frontend dependencies if needed...
    cd /d "%~dp0frontend"
    if not exist "node_modules" npm install
    npm run dev
