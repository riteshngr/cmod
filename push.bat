@echo off
echo Initializing git (if not already initialized)...
git init

echo Adding all files...
git add .

echo Committing changes...
git commit -m "Update trigger sequence in README.md"

echo Setting main branch...
git branch -M main

echo Adding remote repository...
git remote add origin https://github.com/riteshngr/cmod.git
if %errorlevel% neq 0 (
    echo Remote 'origin' might already exist. Updating URL...
    git remote set-url origin https://github.com/riteshngr/cmod.git
)

echo Pushing to GitHub...
git push -u origin main

echo.
pause
