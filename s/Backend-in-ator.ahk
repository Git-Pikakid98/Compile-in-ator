#Requires AutoHotkey v2.0

#Include manifest.scriptlet

;@Ahk2Exe-ConsoleApp

Loop Files, A_Args[1], "F"
SetWorkingDir A_LoopFileDir

for n, param in A_Args
{
	RunWait md "\[CompileTemp].bat"

	ExitApp
}