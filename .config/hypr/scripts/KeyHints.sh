#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##

# GDK BACKEND. Change to either wayland or x11 if having issues
BACKEND=wayland

# Check if rofi or yad is running and kill them if they are
if pidof rofi > /dev/null; then
  pkill rofi
fi

if pidof yad > /dev/null; then
  pkill yad
fi

# Launch yad with calculated width and height
GDK_BACKEND=$BACKEND yad \
    --center \
    --title="KooL Quick Cheat Sheet" \
    --no-buttons \
    --list \
    --column=Key: \
    --column=Description: \
    --column=Command: \
    --timeout-indicator=bottom \
"" "==Settings and keybind==" "" \
" Shift K" "Searchable Keybinds" "(Search all Keybinds via rofi)" \
" Shift E" "KooL Hyprland Settings Menu" "" \
"" "==Application Launchers==" "" \
" Enter" "Terminal" "(kitty)" \
" Shift Enter" "DropDown Terminal" " Q to close" \
" B" "Browser" "(Default browser)" \
" D" "Desktop Overview" "(AGS - if opted to install)" \
" A" "Rofi Launcher" "(rofi-wayland)" \
" E" "File Manager" "(Thunar)" \
" S" "Google Search" "(rofi)" \
"" "==Window Management==" "" \
" Q" "Close Window" "(not kill)" \
" Shift Q " "Kill Window" "(kill)" \
" Spacebar" "Toggle Float" "single window" \
" Alt Spacebar" "Toggle all windows to float" "all windows" \
" Alt Mouse Scroll Up/Down" "Desktop Zoom" "Desktop Magnifier" \
" Shift F" "Fullscreen" "Toggles to full screen" \
" Ctrl F" "Fake Fullscreen" "Toggles to fake full screen" \
"" "==Waybar/UI==" "" \
" Ctrl Alt B" "Hide/UnHide Waybar" "waybar" \
" Ctrl B" "Choose waybar styles" "(waybar styles)" \
" Alt B" "Choose waybar layout" "(waybar layout)" \
" Alt R" "Reload Waybar swaync Rofi" "CHECK NOTIFICATION FIRST!!!" \
" Shift N" "Launch Notification Panel" "swaync Notification Center" \
"" "==Power/System==" "" \
"Ctrl Alt P" "power-menu" "(wlogout)" \
"Ctrl Alt L" "screen lock" "(hyprlock)" \
"Ctrl Alt Del" "Hyprland Exit" "(NOTE: Hyprland Will exit immediately)" \
"" "==Wallpaper==" "" \
" W" "Choose wallpaper" "(Wallpaper Menu)" \
" Shift W" "Choose wallpaper effects" "(imagemagick + swww)" \
"CTRL ALT W" "Random wallpaper" "(via swww)" \
"" "==Screenshot==" "" \
" Print" "screenshot" "(grim)" \
" Shift Print" "screenshot region" "(grim + slurp)" \
" Shift S" "screenshot region" "(swappy)" \
" Ctrl Print" "screenshot timer 5 secs " "(grim)" \
" Ctrl Shift Print" "screenshot timer 10 secs " "(grim)" \
"Alt Print" "Screenshot active window" "active window only" \
"" "==Other==" "" \
" Alt V" "Clipboard Manager" "(cliphist)" \
" ALT L" "Toggle Dwindle | Master Layout" "Hyprland Layout" \
" ALT O" "Toggle Blur" "normal or less blur" \
" CTRL O" "Toggle Opaque ON or OFF" "on active window only" \
" Shift A" "Animations Menu" "Choose Animations via rofi" \
" CTRL R" "Rofi Themes Menu" "Choose Rofi Themes via rofi" \
" CTRL Shift R" "Rofi Themes Menu v2" "Choose Rofi Themes via Theme Selector (modified)" \
" SHIFT G" "Gamemode! All animations OFF or ON" "toggle" \
" ALT E" "Rofi Emoticons" "Emoticon" \
"" "" "" \
" H" "Launch this Quick Cheat Sheet" "" \
"" "" "" \
"More tips:" "https://github.com/JaKooLit/Hyprland-Dots/wiki" ""\
