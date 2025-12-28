@echo off
setlocal enableextensions

rem Set CUDA path and build flags
set "DISTUTILS_USE_SDK=1"
set "MSSdk=1"
set "FLASH_ATTENTION_FORCE_BUILD=TRUE"
set "FLASH_ATTENTION_SKIP_CUDA_BUILD=FALSE"
set "FLASH_ATTN_CUDA_ARCHS=86"
set "MAX_JOBS=1"
set "FLASH_ATTENTION_DEBUG_NVCC=TRUE"

rem Enter VS developer environment
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\Tools\VsDevCmd.bat" -arch=amd64 -host_arch=amd64
if errorlevel 1 exit /b %errorlevel%

echo CUDA_HOME=%CUDA_HOME%
"%CUDA_HOME%\bin\nvcc.exe" --version

rem Build wheel
if "%~dp0"=="" (
  echo Failed to resolve script directory.
  exit /b 1
)
set "SCRIPT_DIR=%~dp0"
set "PYTHON_EXE=%SCRIPT_DIR%venv\Scripts\python.exe"
"%PYTHON_EXE%" setup.py bdist_wheel

endlocal
