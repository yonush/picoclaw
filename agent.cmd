@echo off
setlocal
cd /D %~dp0

set PICOCLAW_HOME=C:/temp/picoclaw/
set PICOCLAW_CONFIG=C:/temp/picoclaw/config.json
::.\picoclaw.exe status
.\picoclaw.exe agent --message %1