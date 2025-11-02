@echo off
for /f "tokens=1-4 delims=/ " %%a in ("%date%") do (
  set mydate=%%a-%%b-%%c
)
for /f "tokens=1-2 delims=: " %%a in ("%time%") do (
  set mytime=%%a-%%b
)
git add .
git commit -m "Auto update on %mydate%_%mytime%"
git push origin main
echo ✅ Changes pushed to GitHub successfully!
pause
