require("hyprland.variables")

function Startup_Apps()
    return function()
        hl.exec_cmd("noctalia")
        hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
        hl.exec_cmd("systemctl --user start hyprpolkitagent")
        hl.exec_cmd("~/dotfiles/scripts/desktop-portal")
    end
end