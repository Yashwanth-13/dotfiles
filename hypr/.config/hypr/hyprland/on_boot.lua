require("hyprland.variables")

function startup_apps()
    return function()
        hl.exec_cmd("noctalia")
        hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
        hl.exec_cmd("systemctl --user start hyprpolkitagent")
        hl.exec_cmd("~/dotfiles/scripts/desktop-portal")

        hl.exec_cmd(code);
        hl.exec_cmd([[sleep 3 && hyprctl dispatch 'hl.dsp.window.move({workspace="2", follow=false, window="class:code"})']]);

        hl.exec_cmd(audioplyr)
        hl.exec_cmd([[sleep 5 && hyprctl dispatch 'hl.dsp.window.move({workspace="special:music", follow=false, window="class:cider"})']]);
        
        hl.exec_cmd(textin)
        hl.exec_cmd([[sleep 3 && hyprctl dispatch 'hl.dsp.window.move({workspace="special:textin", follow=false, window="class:google-chrome"})']]);

        hl.exec_cmd("sudo route del -net 192.168.1.0/24")
    end
end