@echo off

set validFormats=ttl nt jsonld

if "%1"=="" (
    set "format=ttl"
) else (
    set "format=%1"
)

for %%f in (%validFormats%) do (
    if /i "%format%"=="%%f" (
        goto :valid
    )
)

:invalidFormat
echo Invalid format: %format%
echo Valid formats are: %validFormats%, or leave blank to use default format ttl
pause
goto :end

:valid
set "dirPath=results"
if not exist "%dirPath%" (
    echo Directory "%dirPath%" does not exist. Creating it now...
    mkdir "%dirPath%"
)

java ^
    -jar sparql-generate-2.1.0.jar ^
    -d . ^
    -o .\results\result.%format% -fo %format%

:end
