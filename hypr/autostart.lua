hl.on("hyprland.start", function()
    hl.exec_cmd("dbus-update-activation-environment --all --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("xrdb -merge ~/.Xresources")

    -- hl.exec_cmd("waybar")

    -- hl.exec_cmd("clipse -listen")
    -- hl.exec_cmd("wl-paste --type text --watch cliphist store")
    -- hl.exec_cmd("wl-paste --type image --watch cliphist store")
    -- hl.exec_cmd("SUPER", "V", hl.dsp.exec("cliphist list | wofi --dmenu | cliphist decode | wl-copy"))

    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    -- hl.exec_cmd("udiskie --automount --notify --tray")
    -- hl.exec_cmd("swaybg -i /mnt/DATA/Media/Images/Wallpaper/best/6tfmqicz179h1.png -m fill")
    -- hl.exec_cmd("dms run")
    hl.exec_cmd("nm-applet")
    -- hl.exec_cmd("hypridle")

    -- hl.exec_cmd("fcitx5 -d")

    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    -- hl.exec_cmd("hyprsunset --temperature 4500")
    hl.exec_cmd("playerctld daemon") 
end)
