; Ctrl + Windows + Del to toggle Quiet Hours
^#Del::
RegRead, QuietHoursEnabled, HKEY_CURRENT_USER, SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings, NOC_GLOBAL_SETTING_TOASTS_ENABLED
if (QuietHoursEnabled = "") {
    TrayTip Quiet Hours, Quiet Hours activated, 0, 1
    Sleep, 2000 ; Display for 2 seconds
    HideTrayTip()
    RegWrite, REG_DWORD, HKEY_CURRENT_USER, SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings, NOC_GLOBAL_SETTING_TOASTS_ENABLED, 0
} else {
    RegDelete, HKEY_CURRENT_USER, SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings, NOC_GLOBAL_SETTING_TOASTS_ENABLED
    TrayTip Quiet Hours, Quiet Hours deactivated, 0, 1
    Sleep, 2000 ; Display for 2 seconds
    HideTrayTip()
}

HideTrayTip() {
    TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}