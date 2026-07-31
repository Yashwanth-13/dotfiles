-- Change current workspace layout
hl.bind("SUPER + tab", function ()
    local layouts     = { "dwindle", "master" }
    local workspace   = hl.get_active_workspace()
	if hl.get_active_special_workspace() then
		workspace = hl.get_active_special_workspace()
	end

    local next_layout = "dwindle"

    if not workspace then
        return
    end

    for i = 1, #layouts do
        if layouts[i] == workspace.tiled_layout then
            local next_layout_idx = (i % #layouts) + 1
            next_layout = layouts[next_layout_idx]
            break
        end
    end

	if workspace.special then
		hl.workspace_rule({ workspace = tostring(workspace.name), layout = next_layout })
	else
		hl.workspace_rule({ workspace = tostring(workspace.id), layout = next_layout })
	end

    hl.notification.create({ text = "Current Workspace: " .. next_layout, timeout = 3000 })
end)

local function focus_window(dir)
    return function ()
        local workspace = hl.get_active_special_workspace() or
                          hl.get_active_workspace()

        if not workspace then
            return
        end

        local layout = workspace.tiled_layout        
        if layout == "master" then
            if dir == "right" or dir == "down" then
                hl.dispatch(hl.dsp.layout("rollnext"))
            else
                hl.dispatch(hl.dsp.layout("rollprev"))
            end
        else
            hl.dispatch(hl.dsp.focus({direction  = dir}))
        end

    end
end

hl.bind(mainMod .. " + left", focus_window("left"))

hl.bind(mainMod .. " + right", focus_window("right"))

hl.bind(mainMod .. " + up", focus_window("up"))

hl.bind(mainMod .. " + down", focus_window("down"))