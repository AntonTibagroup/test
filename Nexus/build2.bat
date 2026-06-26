@echo off
setlocal enabledelayedexpansion

:: Находим путь к MSBuild через vswhere
for /f "usebackq tokens=*" %%i in (`"%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" -latest -requires Microsoft.Component.MSBuild -find MSBuild\**\Bin\MSBuild.exe`) do (
  set "msbuild_path=%%i"
)

if not defined msbuild_path (
    echo [ERROR] MSBuild not found. Please install Visual Studio.
    pause
    exit /b 1
)

:: Запускаем публикацию
echo [INFO] Found MSBuild at: "!msbuild_path!"
echo [INFO] Starting Publish...

"!msbuild_path!" /t:Publish /p:SqlPublishProfilePath=Local.publish.xml /p:Configuration=Release

pause
