#Requires AutoHotkey v2.0

#Include manifest.scriptlet

;@Ahk2Exe-ConsoleApp

if A_Args.Length < 1
{
    MsgBox "Error! Please launch this with a .compile file"
    ExitApp
}

Loop Files, A_Args[1], "F"
SetWorkingDir A_LoopFileDir

for n, param in A_Args
{
	if not FileExist(te) {
		FileAppend "
		(
			@ECHO OFF
			;title Text-in-ator (v%~2)
			"%tmp%\Cmpl8rTE\Turbo.exe" "%~1"
		)", te
	}
	
	if not FileExist(tmd) {
		FileInstall tc8, tmd, 1
	}
	
	RunWait te " " '"' A_Args[1] '"' " " ver
	
	if not FileExist(tmd) {
		FileDelete te
	}
}