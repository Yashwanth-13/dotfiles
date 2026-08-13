require("hyprland.variables")

-- Fullscreen when only one window in workspace
hl.workspace_rule({ workspace = "w[1]", no_rounding = true, decorate = false, gaps_in = 0, gaps_out = 0, no_border = true })
hl.workspace_rule({workspace = "1", persistent = true})

-- Normal Workspace rules for application init
hl.workspace_rule({workspace = "2", on_created_empty="[tile] code"})

-- Special Workspace rules
hl.workspace_rule({workspace = "special:term", on_created_empty="[tile] kitty"})
hl.workspace_rule({workspace = "special:music", on_created_empty = audioplyr})
hl.workspace_rule({workspace = "special:textin", on_created_empty = textin})
hl.workspace_rule({workspace = "special:discord", on_created_empty = "discord"})
hl.workspace_rule({workspace = "special:fmgr", on_created_empty = "thunar"})
hl.workspace_rule({workspace = "special:stream", on_created_empty = tube})


-- hornet flash
hl.workspace_rule({workspace = "special:shaw", on_created_empty = "timeout 0.3 feh /usr/local/share/shawed.jpeg" })