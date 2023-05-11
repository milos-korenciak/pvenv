@echo off
set "SCRIPTS_DIR=%~dp0"
set "VIRTUAL_ENV=%SCRIPTS_DIR%.."

if defined _OLD_VIRTUAL_PROMPT (
    set "PROMPT=%_OLD_VIRTUAL_PROMPT%"
) else (
    if not defined PROMPT (
        set "PROMPT=$P$G"
    )
    set "_OLD_VIRTUAL_PROMPT=%PROMPT%"
)
set "PROMPT=(venv3.9)%PROMPT%"

REM Don't use () to avoid problems with them in %PATH%
if defined _OLD_VIRTUAL_PYTHONHOME goto ENDIFVHOME
    set "_OLD_VIRTUAL_PYTHONHOME=%PYTHONHOME%"
:ENDIFVHOME

set PYTHONHOME=

REM if defined _OLD_VIRTUAL_PATH (
if not defined _OLD_VIRTUAL_PATH goto ENDIFVPATH1
    set "PATH=%_OLD_VIRTUAL_PATH%"
:ENDIFVPATH1
REM ) else (
if defined _OLD_VIRTUAL_PATH goto ENDIFVPATH2
    set "_OLD_VIRTUAL_PATH=%PATH%"
:ENDIFVPATH2

set "PATH=%VIRTUAL_ENV%;%SCRIPTS_DIR%;%VIRTUAL_ENV%\Library\mingw-w64\bin;%VIRTUAL_ENV%\Library\usr\bin;%VIRTUAL_ENV%\Library\bin;%VIRTUAL_ENV%\bin;%VIRTUAL_ENV%\condabin"
REM We have omitted %PATH% at the end. We want fully isolated Win PATH if possible.
REM E.g. Intel compiler (tools) on path interfere /w numba precompilation of sun_geometry causing SDAT to crash.

set "CONDA_DEFAULT_ENV=venv3.9"
set "CONDA_EXE=%SCRIPTS_DIR%\conda.exe"
set "CONDA_PREFIX=%VIRTUAL_ENV%"
set "CONDA_PROMPT_MODIFIER=(%CONDA_DEFAULT_ENV%)"
set "CONDA_PYTHON_EXE=%VIRTUAL_ENV%\python.exe"
set "CONDA_SHLVL=1"
