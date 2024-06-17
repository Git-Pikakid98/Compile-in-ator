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
	if not FileExist(m_text) {
		FileAppend "
		(
			@ECHO OFF
			;title Text-in-ator (v%~2)
			".Cmpl8r\Modules\Turbo.exe" "%~1"
		)", te
	}
	
	if not FileExist(m_text) {
		FileInstall "..\.Cmpl8r\turbo.exe", ".Cmpl8r\Modules\Turbo.exe", 1
	}
	
	RunWait te " " '"' A_Args[1] '"' " " ver
	
	if FileExist(m_text) {
		FileDelete m_text
	}
}