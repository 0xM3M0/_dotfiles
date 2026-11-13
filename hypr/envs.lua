-- ╔══════════════════════════════════════════════════════╗
-- ║          Environment Variables                       ║
-- ╚══════════════════════════════════════════════════════╝

-- ── Cursor ──
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
-- hl.env("WLR_NO_HARDWARE_CURSORS", "1")
-- hl.env("AQ_NO_HARDWARE_CURSORS", "1")

-- ── Input Method (fcitx5) ──
-- hl.env("GTK_IM_MODULE", "fcitx")
-- hl.env("QT_IM_MODULE", "fcitx")
-- hl.env("XMODIFIERS", "@im=fcitx")
-- hl.env("SDL_IM_MODULE", "fcitx")
-- hl.env("GLFW_IM_MODULE", "ibus")
-- hl.env("INPUT_METHOD", "fcitx")

-- ── NVIDIA ──
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- ── XDG ──
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")

-- ── Font Rendering ──
hl.env("FREETYPE_PROPERTIES", "cff:no-stem-darkening=0 autofitter:no-stem-darkening=0")

-- ── Qt / Wayland ──
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("MOZ_ENABLE_WAYLAND", "1")

hl.env("__GL_SHADER_DISK_CACHE", "1")
hl.env("__GL_SHADER_DISK_CACHE_SKIP_CLEANUP", "1")
hl.env("XDG_DATA_DIRS", "/var/lib/flatpak/exports/share:/home/memo/.local/share/flatpak/exports/share:/usr/local/share:/usr/share")

-- ── NVIDIA Performance ──
-- hl.env("__GL_GSYNC_ALLOWED", "0")
-- hl.env("__GL_VRR_ALLOWED", "0")
-- hl.env("__GL_YIELD", "USLEEP")
-- hl.env("AQ_NO_ATOMIC", "1") 
-- hl.env("__GL_THREADED_OPTIMIZATIONS", "0")

