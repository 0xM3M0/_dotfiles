-- ╔══════════════════════════════════════════════════════╗
-- ║                  Look & Feel                         ║
-- ╚══════════════════════════════════════════════════════╝

hl.config({
    general = {
        gaps_in = 0,
        gaps_out = 0,
        border_size = 2,
        ["col.active_border"] = "rgb(4a627c)",
        ["col.inactive_border"] = "rgb(161a24)",
        resize_on_border = false,
        allow_tearing = false,
        layout = "master",
    },

    decoration = {
        rounding = 10,
        rounding_power = 5.0,
        dim_inactive = false,
	border_part_of_window = false,
        
	shadow = {
            enabled = false,
            range = 4,
            render_power = 3,
            color = "rgba(000000ee)",
        },

        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            xray = false,
        },
	
    },

    animations = {
        enabled = true,
    },

    dwindle = {
        preserve_split = true,
    },

    xwayland = {
        force_zero_scaling = false,
    },

    master = {
        new_status = "slave",
        mfact = 0.5,
        new_on_top = false,
        orientation = "left",
    },

    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
	disable_splash_rendering = true,
        enable_swallow = true,
        swallow_regex = "^(kitty|foot|nautilus|nemo|thunar|btrfs-assistant)$",
        vrr = 0,
        mouse_move_enables_dpms = true,
        allow_session_lock_restore = true,
        animate_manual_resizes = false,
    },

    render = {
        direct_scanout = 2,
        new_render_scheduling = true,
    }
})

-- Opacity
hl.window_rule({ match = { class = "^(kitty)$" },  opacity = "0.85 0.85" })
hl.window_rule({ match = { class = "^(thunar)$" }, opacity = "0.85 0.85" })

-- Blur
--windowrulev2 = opacity 0.85 0.85, class:^(kitty)$
--windowrulev2 = opacity 0.85 0.85, class:^(Thunar)$

-- ── Animation Curves ──
hl.curve("easeOutQuint",    { type = "bezier", points = { {0.23, 1},    {0.32, 1}   } })
hl.curve("easeInOutCubic",  { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}   } })
hl.curve("linear",          { type = "bezier", points = { {0, 0},       {1, 1}      } })
hl.curve("almostLinear",    { type = "bezier", points = { {0.5, 0.5},   {0.75, 1.0} } })
hl.curve("quick",           { type = "bezier", points = { {0.15, 0},    {0.1, 1}    } })

-- ── Animations ──
hl.animation({ leaf = "global",        enabled = true, speed = 3,    bezier = "default" })
hl.animation({ leaf = "border",        enabled = false })
hl.animation({ leaf = "windows",       enabled = true, speed = 2,    bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn",     enabled = true, speed = 2,    bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true, speed = 2,    bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true, speed = 2,    bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true, speed = 2,    bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true, speed = 2,    bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true, speed = 2,    bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true, speed = 2,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 2,    bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 2,    bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2,    bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true, speed = 5,    bezier = "easeOutQuint", style = "slide" })
hl.animation({ leaf = "workspacesIn",  enabled = true, speed = 5,    bezier = "easeOutQuint", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5,    bezier = "easeOutQuint", style = "slide" })

-- ── Workspace Rules ──

hl.workspace_rule({ workspace = "w[t1]",  no_border = true })
hl.workspace_rule({ workspace = "w[tg1]", no_border = true })
hl.workspace_rule({ workspace = "f[1]",   no_border = true })
