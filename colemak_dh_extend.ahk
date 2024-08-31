; AutoHotKey v2 script for defining an Extend layer (default is CapsLock)
; Hold Extend and press other keys to provide navigation and other functionality

; The script defines F24 as Extend, so you can apply to any key of your choice
; e.g. to use CapsLock, define:
;RAlt::F24


; Ensure CapsLock is off initially
;SetCapsLockState "Off"

; Define the navigation layer keys

; Set Numrow to F1-F12
F24 & SC001:: Return
F24 & SC002:: Send '{Blind}{F1}'
F24 & SC003:: Send '{Blind}{F2}'
F24 & SC004:: Send '{Blind}{F3}'
F24 & SC005:: Send '{Blind}{F4}'
F24 & SC006:: Send '{Blind}{F5}'
F24 & SC007:: Send '{Blind}{F6}'
F24 & SC008:: Send '{Blind}{F7}'
F24 & SC009:: Send '{Blind}{F8}'
F24 & SC00A:: Send '{Blind}{F9}'
F24 & SC00B:: Send '{Blind}{F10}'
F24 & SC00C:: Send '{Blind}{F11}'
F24 & SC00D:: Send '{Blind}{F12}'

; top row
F24 & SC010:: Send '{Esc}'
F24 & SC011:: MouseClick "X1"
F24 & SC012:: Send '^f' ; "find"
F24 & SC013:: MouseClick "X2"
F24 & SC014:: Send '{Insert}'
F24 & SC015:: Return
F24 & SC016:: Send '{Blind}{PgUp}'
F24 & SC017:: Send '{Blind}{Home}'
F24 & SC018:: Send '{Blind}{Up}'
F24 & SC019:: Send '{Blind}{End}'

F24 & SC01A:: {
    if GetKeyState('CapsLock', 'T')
        SetCapsLockState "Off"
    else
        SetCapsLockState "On"
}

; middle row
F24 & SC01E:: Send '{Blind}{LAltDown}'
F24 & SC01E Up:: Send '{LAltUp}'
F24 & SC01F:: Send '{Blind}{LWinDown}'
F24 & SC01F Up:: Send '{LWinUp}'
F24 & SC020:: Send '{Blind}{ShiftDown}'
F24 & SC020 Up:: Send '{ShiftUp}'
F24 & SC021:: Send '{Blind}{CtrlDown}'
F24 & SC021 Up:: Send '{CtrlUp}'
F24 & SC022:: Send '{Blind}{RAltDown}'
F24 & SC022 Up:: Send '{RAltUp}'
F24 & SC023:: Return
F24 & SC024:: Send '{Blind}{PgDn}'
F24 & SC025:: Send '{Blind}{Left}'
F24 & SC026:: Send '{Blind}{Down}'
F24 & SC027:: Send '{Blind}{Right}'
F24 & SC028:: Send '{Blind}{Del}'

; bottom row
F24 & SC056:: Send '^z'
F24 & SC02C:: Send '^x'
F24 & SC02D:: Send '^c'
F24 & SC02E:: Send '^c'
F24 & SC02F:: Send '^v'
F24 & SC030:: Return
F24 & SC031:: Send '{Return}'
F24 & SC032:: Send '{Blind}{PrintScreen}'
F24 & SC033:: Send '{Blind}{Backspace}'
F24 & SC034:: Send '{Blind}{Tab}'
F24 & SC035:: Send '{AppsKey}'

; RAlt cancel caps / nav layer
RAlt:: {
    static navLayer := 0
    if navLayer
        navLayer := 0
    else if GetKeyState('CapsLock', 'T')
        SetCapsLockState "Off"
}
