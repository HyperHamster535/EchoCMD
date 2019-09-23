@echo off

title EchoCMD v1.1.0

echo EchoCMD v1.1.0
echo (c) Joshua Britain 2019
echo ---------------------------------------------------------

net session >nul 2>&1
if %errorlevel% equ 0 (
	echo Running in administrator mode. Please be careful!
) else (
	echo Unable to gain administrator rights
)
echo ---------------------------------------------------------

:input
	set directory=%cd%:
	set /P command=%directory%
	
:run
	%command%
	goto input