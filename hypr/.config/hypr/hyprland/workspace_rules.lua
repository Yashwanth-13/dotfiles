require("hyprland.variables")
require("hyprland.helpers")

-- Fullscreen when only one window in workspace
hl.workspace_rule({ workspace = "w[1]", decorate = false, gaps_in = 5, gaps_out = 5, no_border = true })
hl.workspace_rule({ workspace = "w[(f)2]", decorate = false, gaps_in = 5, gaps_out = 5, no_border = true })
hl.workspace_rule({ workspace = "special:music", decorate = false, gaps_in = 0, gaps_out = 0, no_border = true })
hl.workspace_rule({ workspace = "special:wrapped_discord", decorate = false, gaps_in = 0, gaps_out = 0, no_border = true })

local internal_monitor = Get_Monitor_Name(1)
local external_monitor = Get_Monitor_Name(2)
if not external_monitor then external_monitor = internal_monitor end
hl.workspace_rule({workspace = "1", monitor = internal_monitor, persistent = true})
hl.workspace_rule({workspace = "2", monitor = external_monitor, persistent = true})

-- Special Workspace rules
hl.workspace_rule({workspace = "special:term", on_created_empty="kitty"})
hl.workspace_rule({workspace = "special:music", on_created_empty = audioplyr})
hl.workspace_rule({workspace = "special:textin", on_created_empty = textin})
hl.workspace_rule({workspace = "special:wrapped_discord", on_created_empty = discord_wrapper})
hl.workspace_rule({workspace = "special:fmgr", on_created_empty = "thunar"})
hl.workspace_rule({workspace = "special:stream", on_created_empty = tube})
hl.workspace_rule({workspace = "special:homelab", on_created_empty = terminal .. " ssh yaksha@192.168.1.4"})


-- hornet flash
hl.workspace_rule({workspace = "special:shaw", animation = "fade", on_created_empty = "timeout 0.4 feh /usr/local/share/shaw.png"})

hl.on("workspace.active", function(wrkspace)
    hl.notification.create({ text = "Workspace: " .. wrkspace.name, timeout = 1000, icon = "hint" })
end)