@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64
set PATH=C:\vcpkg\downloads\tools\ninja-1.13.2-windows;%PATH%
cd /d "C:\Users\Usuario\Documents\OTserv\RME map editor"
cmake --preset windows-release -S . -B ./build/windows-release > build_log.txt 2>&1
echo CMAKE_EXIT=%ERRORLEVEL% >> build_log.txt
if %ERRORLEVEL% EQU 0 (
    cmake --build --preset windows-release >> build_log.txt 2>&1
    echo BUILD_EXIT=%ERRORLEVEL% >> build_log.txt
)
