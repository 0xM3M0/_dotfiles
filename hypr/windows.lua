-- ╔══════════════════════════════════════════════════════╗
-- ║           Window & Layer Rules                       ║
-- ╚══════════════════════════════════════════════════════╝

-- ── DYNAMIC ROUNDING ──
hl.window_rule({ match = { float = false }, rounding = 0 })
hl.window_rule({ match = { fullscreen = true }, rounding = 0 })

-- ── CLIPSE ──
-- hl.window_rule({ match = { class = "clipse" },     float = true, size = {622, 652}, stay_focused = true })

-- ── WAYPAPER ──
-- hl.window_rule({ match = { class = "waypaper" },    float = true })

-- ── FILE MANAGER / APPS ──
-- hl.window_rule({ match = { class = "^(thunar)$" },              opacity = "0.85 override" })
-- hl.window_rule({ match = { class = "code" },                    opacity = "0.90" })
-- hl.window_rule({ match = { class = "org.telegram.desktop" },    opacity = "0.85" })

-- ── LAYER RULES ──
-- hl.layer_rule({ match = { namespace = "wofi" },   blur = false })
-- hl.layer_rule({ match = { namespace = "waybar" }, blur = false })

-- ── XWAYLAND ──
hl.window_rule({ match = { xwayland = true }, no_blur = true })

-- ── TEARING (games/wine) ──
hl.window_rule({ match = { title = ".*\\.exe" },       immediate = true })
hl.window_rule({ match = { class = "^(steam_app)" },   immediate = true })

-- ── DISCORD ──
hl.window_rule({ match = { class = "^[Dd]iscord$" }, workspace = "10 silent" })

-- ── DIALOG WINDOWS ──
hl.window_rule({ match = { class = "^(xdg-desktop-portal-gtk)$" }, float = true, center = true, pin = true })
hl.window_rule({ match = { title = "^(Open File)(.*)$" },          float = true, center = true })
hl.window_rule({ match = { title = "^(Save As)(.*)$" },            float = true, center = true })
hl.window_rule({ match = { title = "^(Open Folder)(.*)$" },        float = true, center = true })
hl.window_rule({ match = { title = "^(File Upload)(.*)$" },        float = true, center = true })

-- Thunar Transfer/Progress Dialogs
hl.window_rule({ match = { class = "[Tt]hunar", title = "^(File Operation Progress)$" }, float = true, center = true })
hl.window_rule({ match = { class = "[Tt]hunar", title = "^(Confirm to replace files)$" }, float = true, center = true })
hl.window_rule({ match = { class = "[Tt]hunar", title = ".*([Mm]oving|[Cc]opying|[Dd]eleting) files.*" }, float = true, center = true })
hl.window_rule({ match = { class = "[Tt]hunar", title = ".*([Rr]ename|[Cc]reate|[Nn]ew).*" }, float = true, center = true })
hl.window_rule({ match = { class = "[Tt]hunar", title = ".*(Properties|Preferences|.*[Pp]roperties).*" }, float = true, center = true })

-- ── PICTURE IN PICTURE ──
hl.window_rule({
    match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
    float = true,
    pin = true,
    size = {"(monitor_w*0.25)", "(monitor_h*0.25)"},
    move = {"(monitor_w*0.73)", "(monitor_h*0.72)"},
})

-- ── CUSTOM ──
hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
    no_focus = true,
})

hl.window_rule({
    name = "dwm-noborderfloatingfix",
    match = { float = true },
    border_size = 1,
})

hl.window_rule({ match = { class = "^(pavucontrol)$" }, float = true, center = true, size = {800, 500} })
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, float = true })
hl.window_rule({ match = { class = "^(blueman-manager)$" }, float = true })
