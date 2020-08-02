#SingleInstance
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Mapping

;{WIN + SHIFT + O} 	- создать новый лог стрима
;{ALT + O} 		- добавить запись в лог
;{ALT + SHIFT + O}	- добавить быструю запись в лог

#+o::
{
InputBox, new_stream_name, Stream Marker Mark I, Name your stream:, , 500, 130 
Run, %A_WorkingDir%/stream_marker_mk1.exe new %new_stream_name% 
return
}

!o::
{ 
InputBox, mark_name,  Stream Marker Mark I, Add signature, , 500, 130
Run, %A_WorkingDir%/stream_marker_mk1.exe add %mark_name%
return
}

!+o::
{ 
Run, %A_WorkingDir%/stream_marker_mk1.exe add_blank
return
}
