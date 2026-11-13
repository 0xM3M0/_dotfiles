-- ╔══════════════════════════════════════════════════════╗
-- ║           Input, Cursor & Binds Settings             ║
-- ╚══════════════════════════════════════════════════════╝

hl.config({
    input = {
        kb_layout = "us,ara",
        kb_variant = "",
        kb_model = "",
        kb_options = "lv3:ralt_alt",
        kb_rules = "",
        numlock_by_default = true,
        repeat_delay = 300,
        repeat_rate = 50,
        follow_mouse = 1,
        accel_profile = "flat",
        sensitivity = 0.4,
        force_no_accel = false
    },

    cursor = {
        no_hardware_cursors = 2,
        enable_hyprcursor = true,
        warp_on_change_workspace = false,
        no_warps = true,
    },

    binds = {
        scroll_event_delay = 0,
        workspace_back_and_forth = true,
        allow_workspace_cycles = true,
        pass_mouse_when_bound = false,
    },
})

hl.gesture({ 
    fingers = 3, 
    direction = "horizontal", 
    action = "workspace",
    scale = 0.6
})

hl.config({
    misc = {
        middle_click_paste = true,
    },
})
