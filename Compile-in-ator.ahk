#Requires AutoHotkey v2.0

#Include s\manifest.scriptlet

if A_Args.Length < 2
{
    MsgBox "
    (
    	Usage: "Compile-in-ator.exe" {MODULE} "{SCRIPT}"
    	
    	Arguments:
    		-compile = Initiates the compiler
    		-text = Opens the script for editing in Turbo (by Magiblot)
    		
    		-noclose = Prevents deleting compile-in-ator's temp (Only useful via a frontend)
    	
    	Example: "Compile-in-ator.exe" -compile "C:\users\User\Downloads\Script\.compile"
    )"
    ExitApp
}

#Include s\onopen.scriptlet

FileInstall ".Cmpl8r\Backend-in-ator.exe", ".Cmpl8r\Modules\Backend-in-ator.exe", 1
FileInstall ".Cmpl8r\Text-in-ator.exe", ".Cmpl8r\Modules\Text-in-ator.exe", 1

Loop Files, A_Args[2], "F"
SetWorkingDir A_LoopFileDir

if A_Args[1] = "-compile" {
	RunWait md "\" mn_compile ".exe" " " A_Args[2]
}

if A_Args[1] = "-text" {
	RunWait md "\" mn_text ".exe" " " A_Args[2]
}

#Include s\onclose.scriptlet