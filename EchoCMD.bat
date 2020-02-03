@echo off
title EchoCMD

echo EchoCMD [Version 1.5.1]
echo (c) 2020 Pr0x1mas. All rights reserved.
echo(

:input
	set directory=%cd%^^^>
	set /P command=%directory%
	
:run
	%command%
	goto input
