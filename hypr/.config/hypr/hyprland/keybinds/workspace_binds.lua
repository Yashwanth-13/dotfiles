require("hyprland.keybinds.helpers")

-- Keybinds for Special Workspaces
hl.bind(mainMod .. " + C", hl.dsp.workspace.toggle_special("term"))
hl.bind("ALT + S", hl.dsp.workspace.toggle_special("music"))
hl.bind("ALT + W", hl.dsp.workspace.toggle_special("textin"))
hl.bind("ALT + E", hl.dsp.workspace.toggle_special("wrapped_discord"))
hl.bind("SUPER + E", hl.dsp.workspace.toggle_special("fmgr"))
hl.bind("SUPER + H", hl.dsp.workspace.toggle_special("shaw"))
hl.bind("CTRL + SPACE", hl.dsp.workspace.toggle_special("stream"))
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("homelab"))


-- Scroll wheel to cycle through workspaces. Is monitor aware
hl.bind(mainMod .. " + mouse_down", Focus_Workspace(true))
hl.bind(mainMod .. " + mouse_up", Focus_Workspace(false))

-- Side buttons to cycle through workspaces. Is monitor aware
hl.bind(mainMod .. " + mouse:275", Focus_Workspace(true))
hl.bind(mainMod .. " + mouse:276", Focus_Workspace(false))

-- Arrow keys to cycle through workspaces. Is monitor aware
hl.bind(mainMod .. " + Down", Focus_Workspace(true))
hl.bind(mainMod .. " + Up", Focus_Workspace(false))

-- Adds workspace. Is monitor aware.
hl.bind("CTRL + D", Add_Workspace())

-- generic
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, Goto_Workspace(key))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i })) -- Move window to workspace
end