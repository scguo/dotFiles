#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; src: https://autohotkey.com/board/topic/80697-long-keypress-hotkeys-wo-modifiers/

$ESC::                                                  ; Long press (> 0.25 sec) closes window - but if you change your mind you can keep it pressed for 1 more second
    KeyWait, Escape, T0.25                              ; Wait no more than 0.25 sec for key release (also suppress auto-repeat)
    If ErrorLevel                                       ; timeout, so key is still down...
        {
            SoundPlay *64                               ; Play an asterisk sound
            WinGet, X, ProcessName, A
            SplashTextOn,,150,,`nRelease button to close %x%`n`nKeep pressing it to NOT close window...
            KeyWait, Escape, T0.5                       ; Wait no more than 0.5 more sec for key to be released
            SplashTextOff
            If !ErrorLevel                              ; No timeout, so key was released
                {
                    PostMessage, 0x112, 0xF060,,, A     ; ...so close window      
                    Return
                }
                                                        ; Otherwise,
            SoundPlay *64
            KeyWait, Escape                             ; Wait for button to be released
                                                        ; Then do nothing...
            Return
        }

        Send {Esc}
Return
