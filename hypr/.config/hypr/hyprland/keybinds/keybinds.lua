require("hyprland.keybinds.layout_rules")
require("hyprland.variables")


hl.bind("SUPER + L", hl.dsp.exec_cmd("noctalia msg session lock")) -- Lock
hl.bind("SUPER + V", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"))

-- shaw
hl.bind("SUPER + H", hl.dsp.exec_cmd("ffplay -nodisp -autoexit -loglevel quiet /usr/local/share/shaw.mp3"))

-- Screenshots
hl.bind("SUPER + Print", hl.dsp.exec_cmd('noctalia msg screenshot-fullscreen'))
hl.bind("Print", hl.dsp.exec_cmd('noctalia msg screenshot-region'))



hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal)) -- Launches terminal
hl.bind("ALT" .. " + Q", hl.dsp.window.close()) -- Closes focused window
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(browser)) -- Launches browser
hl.bind(mainMod .. " + D", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle"})) -- Toggle fullscreen mode
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu)) -- Launcher
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- Swap split layput, works only for dwindle


for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i})) -- Switch to workspace
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i })) -- Move window to workspace
end

-- Special Workspaces
hl.bind(mainMod .. " + C", hl.dsp.workspace.toggle_special("term"))
hl.bind("ALT + D", hl.dsp.workspace.toggle_special("moosic"))
hl.bind("ALT + W", hl.dsp.workspace.toggle_special("textin"))
hl.bind("ALT + E", hl.dsp.workspace.toggle_special("discord"))
hl.bind("SUPER + E", hl.dsp.workspace.toggle_special("fmgr"))
hl.bind("SUPER + H", hl.dsp.workspace.toggle_special("shaw"))
-- hl.bind("CTRL + ALT + W", hl.dsp.window.move({workspace = "special:stream"}))
hl.bind("CTRL + SPACE", hl.dsp.workspace.toggle_special("stream"))


-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
