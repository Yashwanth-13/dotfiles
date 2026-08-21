require("hyprland.keybinds.layout_rules")
require("hyprland.variables")
require("hyprland.keybinds.media_binds")
require("hyprland.keybinds.workspace_binds")
require("hyprland.helpers")


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
local internal_monitor = Get_Monitor_Name(1)
local external_monitor = Get_Monitor_Name(2)

hl.bind("CTRL + comma", hl.dsp.focus({monitor = internal_monitor})) -- Focus to internal monitor
hl.bind("CTRL + period", hl.dsp.focus({monitor = external_monitor})) -- Focus to external monitor
hl.bind("ALT + SHIFT + comma", hl.dsp.window.move({monitor = internal_monitor})) -- Move window to internal monitor
hl.bind("ALT + SHIFT + period", hl.dsp.window.move({monitor = external_monitor})) -- Move window to external monitor

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- shaw
hl.bind("SUPER + H", hl.dsp.exec_cmd("ffplay -nodisp -autoexit -loglevel quiet /usr/local/share/shaw.mp3"))