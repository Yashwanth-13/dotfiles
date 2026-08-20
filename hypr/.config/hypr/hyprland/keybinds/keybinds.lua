require("hyprland.keybinds.layout_rules")
require("hyprland.variables")
require("hyprland.keybinds.media_binds")
require("hyprland.keybinds.workspace_binds")


-- Noctalia
hl.bind("SUPER + L", hl.dsp.exec_cmd("noctalia msg session lock"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("noctalia msg panel-toggle noctalia/notes:panel")) -- Requires a 3rd party notes plugin to be installed
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd(calendar)) 


-- Screenshots
hl.bind("SUPER + Print", hl.dsp.exec_cmd('noctalia msg screenshot-fullscreen'))
hl.bind("Print", hl.dsp.exec_cmd('noctalia msg screenshot-region'))

-- Functionality binds
hl.bind("ALT" .. " + Q", hl.dsp.window.close()) -- Closes application
hl.bind(mainMod .. " + D", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle"})) -- Toggle fullscreen mode


-- Application Related
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal)) -- Launches terminal
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(browser)) -- Launches browser
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(launcher)) -- Global application Launcher
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- Swap split layout, works only for dwindle

-- Monitor related
hl.bind("CTRL + comma", hl.dsp.focus({monitor = "eDP-1"}))
hl.bind("CTRL + period", hl.dsp.focus({monitor = "HDMI-A-1"}))
hl.bind("CTRL + SHIFT + comma", hl.dsp.workspace.move({monitor = "eDP-1"}))
hl.bind("CTRL + SHIFT + period", hl.dsp.workspace.move({monitor = "HDMI-A-1"}))
hl.bind("ALT + SHIFT + comma", hl.dsp.window.move({monitor = "eDP-1"}))
hl.bind("ALT + SHIFT + period", hl.dsp.window.move({monitor = "HDMI-A-1"}))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- shaw
hl.bind("SUPER + H", hl.dsp.exec_cmd("ffplay -nodisp -autoexit -loglevel quiet /usr/local/share/shaw.mp3"))