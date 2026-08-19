
require("hyprland.keybinds.helpers")

-- Keybinds for Special Workspaces
hl.bind(mainMod .. " + C", hl.dsp.workspace.toggle_special("term"))
hl.bind("ALT + D", hl.dsp.workspace.toggle_special("music"))
hl.bind("ALT + W", hl.dsp.workspace.toggle_special("textin"))
hl.bind("ALT + E", hl.dsp.workspace.toggle_special("wrapped_discord"))
hl.bind("SUPER + E", hl.dsp.workspace.toggle_special("fmgr"))
hl.bind("SUPER + H", hl.dsp.workspace.toggle_special("shaw"))
-- hl.bind("CTRL + SPACE", hl.dsp.workspace.toggle_special("stream"))
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("homelab"))


-- Scroll wheel to cycle through workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({workspace = "e+1"}))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({workspace = "e-1"}))

-- Side buttons to cycle through workspaces
hl.bind(mainMod .. " + mouse:275", hl.dsp.focus({workspace = "e+1"}))
hl.bind(mainMod .. " + mouse:276", hl.dsp.focus({workspace = "e-1"}))

-- Arrow keys to cycle through workspaces
hl.bind(mainMod .. " + Down", hl.dsp.focus({workspace = "e+1"}))
hl.bind(mainMod .. " + Up", hl.dsp.focus({workspace = "e-1"}))

hl.bind("CTRL + D", function()
    add_workspace()
end)

-- generic
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i})) -- Switch to workspace
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i })) -- Move window to workspace
end