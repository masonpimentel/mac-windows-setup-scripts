#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

; CTRL + Shift + l: restart Logitech Gaming Software
; CTRL + Shift + e: restart Windows explorer

^+l::
  Process, Close, LCore.exe
  Sleep, 2000
  Run "C:\Program Files\Logitech Gaming Software\LCore.exe"
Return

^+e::
  Process, Close, explorer.exe
  Sleep, 2000
  Run "C:\Windows\explorer.exe"
Return