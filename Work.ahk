#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

SetTitleMatchMode, 2
Gui +AlwaysOnTop

;re-run Desktop.ahk
^!a::
    Run, "C:\Work\DDrive\Work.ahk"
Return

;start CMDer
^!c::
    Run, "C:\Work\DDrive\cmder_mini\vendor\conemu-maximus5\ConEmu64.exe"
Return

; set up IDE and Mac Telnet window
^!w::
    WinMove, dcg-roku-mac [C:\Work\DDrive\Repos\dcg-roku-mac],  , -7, 0, 1387, 1047
    WinMove, Mac Telnet VT, , 1400, 0, 558, 1052
Return

; for remapping to next tab on Mac
^!n::
	; next tab
	Send ^{Tab}
Return

; for remapping to next tab on Mac
^!p::
	; prev tab
	Send ^+{Tab}
Return

^!t::
  WinGetTitle, Title, A
  MsgBox, The active window is "%Title%"
Return
