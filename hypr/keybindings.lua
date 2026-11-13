-- ╔══════════════════════════════════════════════════════╗
-- ║           Keybindings (DWM Style)                    ║
-- ╚══════════════════════════════════════════════════════╝

-- ── Spawning Apps ──
-- hl.bind("SUPER + P",                  hl.dsp.exec_cmd("rofi -show drun"))
-- hl.bind("SUPER + P",                  hl.dsp.exec_cmd(menu)) -- DWM: dmenu
hl.bind("SUPER + Return",             hl.dsp.exec_cmd(terminal))
-- hl.bind("SUPER + V",                  hl.dsp.exec_cmd(terminal .. " --class clipse -e clipse"))
hl.bind("SUPER + E",                  hl.dsp.exec_cmd(fileManager))

-- ── Window Management (Focus & Stack) ──
hl.bind("SUPER + J", hl.dsp.layout("cyclenext")) -- DWM: focusstack +1
hl.bind("SUPER + K", hl.dsp.layout("cycleprev")) -- DWM: focusstack -1
hl.bind("SUPER + Down", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + Up", hl.dsp.focus({ direction = "u" }))

hl.bind("SUPER + SHIFT + J", hl.dsp.layout("swapnext")) -- DWM: pushdown
hl.bind("SUPER + SHIFT + K", hl.dsp.layout("swapprev")) -- DWM: pushup
hl.bind("SUPER + SHIFT + Down", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER + SHIFT + Up", hl.dsp.window.move({ direction = "u" }))

-- ── Layout & Master Area ──
hl.bind("SUPER + H", hl.dsp.layout("mfact -0.05"), { repeating = true }) -- DWM: setmfact -0.05
hl.bind("SUPER + L", hl.dsp.layout("mfact +0.05"), { repeating = true }) -- DWM: setmfact +0.05
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "l" })) -- DWM: shiftboth -1
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "r" })) -- DWM: shiftboth +1
hl.bind("SUPER + CTRL + H",  hl.dsp.window.move({ workspace = "r-1" })) -- DWM: shiftswaptags -1
hl.bind("SUPER + CTRL + L",  hl.dsp.window.move({ workspace = "r+1" })) -- DWM: shiftswaptags +1

hl.bind("SUPER + SHIFT + Return", hl.dsp.layout("swapwithmaster")) -- DWM: zoom (swap with master)
hl.bind("SUPER + SHIFT + I", hl.dsp.layout("addmaster")) -- DWM: incnmaster +1
hl.bind("SUPER + SHIFT + D", hl.dsp.layout("removemaster")) -- DWM: incnmaster -1

-- ── Floating, Fullscreen & Quit ──
hl.bind("SUPER + SHIFT + Q",          hl.dsp.window.close()) -- DWM: killclient
hl.bind("SUPER + SHIFT + T",          hl.dsp.window.float({ action = "toggle" })) -- DWM: setlayout tiling (toggle back from float)
hl.bind("SUPER + F",                  hl.dsp.window.fullscreen({ mode = "maximized" })) -- fullscreen, keeps DMS bar
hl.bind("SUPER + SHIFT + R",          hl.dsp.exec_cmd("hyprctl reload")) -- DWM: self_restart
hl.bind("SUPER + CTRL + SHIFT + Q",   hl.dsp.exec_cmd("nwg-bar")) -- DWM: exitdwm
hl.bind("SUPER + CTRL + SHIFT + W",   hl.dsp.exec_cmd("hyprctl dispatch exit")) -- DWM: quit
-- hl.bind("SUPER + SHIFT + B",          hl.dsp.exec_cmd("killall -SIGUSR1 waybar")) -- DWM: togglebar
hl.bind("SUPER + Space",              hl.dsp.exec_cmd("hyprctl switchxkblayout all next"))
-- hl.bind("SUPER + Space", 	         hl.dsp.exec_cmd("hyprctl switchxkblayout all next && dms run --reload"))
-- hl.bind("SUPER + Space", hl.dsp.exec_cmd("hyprctl switchxkblayout ite-tech.-inc.-ite-device(8910)-keyboard next"))
-- hl.bind("SUPER + Space", hl.dsp.exec_cmd("hyprctl switchxkblayout corsai-corsair-gaming-k95-rgb-platinum-keyboard next"))

-- ── Workspaces (Tags) ──
for i = 1, 9 do
    hl.bind("SUPER + " .. i,         hl.dsp.focus({ workspace = i }))
    hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end
hl.bind("SUPER + 0",         hl.dsp.focus({ workspace = 10 }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- ── Workspace Navigation (ShiftView) ──
hl.bind("SUPER + Tab",   hl.dsp.focus({ workspace = "previous" })) -- DWM: view previous tag
hl.bind("SUPER + Right", hl.dsp.focus({ workspace = "r+1" })) -- DWM: shiftview +1
hl.bind("SUPER + Left",  hl.dsp.focus({ workspace = "r-1" })) -- DWM: shiftview -1
hl.bind("SUPER + SHIFT + Right", hl.dsp.window.move({ workspace = "r+1" })) -- move window to next workspace
hl.bind("SUPER + SHIFT + Left",  hl.dsp.window.move({ workspace = "r-1" })) -- move window to previous workspace
hl.bind("ALT + Grave",         hl.dsp.focus({ workspace = "r+1" })) -- DWM: shiftview +1
hl.bind("ALT + SHIFT + Grave", hl.dsp.focus({ workspace = "r-1" })) -- DWM: shiftview -1
hl.bind("ALT + Tab",           hl.dsp.focus({ workspace = "e+1" })) -- DWM: shiftviewclients +1
hl.bind("ALT + SHIFT + Tab",   hl.dsp.focus({ workspace = "e-1" })) -- DWM: shiftviewclients -1

-- ── Monitors ──
hl.bind("SUPER + Comma",  hl.dsp.focus({ monitor = "l" })) -- DWM: focusmon -1
hl.bind("SUPER + Period", hl.dsp.focus({ monitor = "r" })) -- DWM: focusmon +1
hl.bind("SUPER + SHIFT + Comma",  hl.dsp.window.move({ monitor = "l" })) -- DWM: tagmon -1
hl.bind("SUPER + SHIFT + Period", hl.dsp.window.move({ monitor = "r" })) -- DWM: tagmon +1

-- ── Scratchpad ──
hl.bind("SUPER + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- ── Mouse ──
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + mouse_up",   hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse:272",  hl.dsp.window.drag(),   { mouse = true })
hl.bind("SUPER + mouse:273",  hl.dsp.window.resize(), { mouse = true })
hl.bind("SUPER + mouse:274",  hl.dsp.window.float({ action = "toggle" }))

-- ── Media Keys ──
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 2%+"), { repeating = true, locked = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"),         { repeating = true, locked = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),        { locked = true })
hl.bind("XF86AudioMicMute",      hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),      { locked = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),  { repeating = true, locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),  { repeating = true, locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
hl.bind("XF86AudioStop",  hl.dsp.exec_cmd("playerctl stop"),       { locked = true }) -- DWM: medstopcmd

-- ── Misc Keys ──
hl.bind("XF86Calculator",        hl.dsp.exec_cmd("gnome-calculator"))

-- ── Custom DWM Extra Binds ──
-- hl.bind("SUPER + F9",  hl.dsp.exec_cmd("hyprsunset -t 4500")) -- DWM: redshift_on
-- hl.bind("SUPER + F10", hl.dsp.exec_cmd("killall hyprsunset")) -- DWM: redshift_off
hl.bind("SUPER + SHIFT + CTRL + L",   hl.dsp.exec_cmd("dms ipc call lock lockAndOutputsOff"))

-- ── Screenshot ──
hl.bind("SHIFT + Print", hl.dsp.exec_cmd([[grim ~/Pictures/Screenshots/Screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png]])) -- DWM: screenshot_full
hl.bind("Print", hl.dsp.exec_cmd([[grim -g "$(slurp)" - | wl-copy]])) -- DWM: screenshot_sel (to clipboard)
hl.bind("SUPER + Print", hl.dsp.exec_cmd([[grim -g "$(slurp)" ~/Pictures/Screenshots/Screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png]])) -- screenshot_sel (to file)
