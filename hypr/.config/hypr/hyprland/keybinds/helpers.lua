local function get_external_monitor()
    local monitors = hl.get_monitors()
    if #monitors > 1 then
        return monitors[2].name
    else
        return nil
    end

end

local function move_to_workspace(wrkspc)
    hl.dispatch(hl.dsp.focus({workspace = wrkspc}))
end

function add_workspace()
    local external_monitor = get_external_monitor()
    local workspaces = hl.get_workspaces()
    local last_odd_workspace, last_even_workspace, last_workspace, next_workspace = nil, nil, nil, nil

    for i, workspace in ipairs(workspaces) do
        if not workspace.special then    
            local curr = tonumber(workspace.name)
            if curr % 2 == 0 then last_even_workspace = curr
            else last_odd_workspace = curr
            end
            last_workspace = curr
        end
    end

    if not external_monitor then
        next_workspace = last_workspace + 1
        move_to_workspace(next_workspace)
        return
    end

    local active_monitor = hl.get_active_monitor()

    if active_monitor.name == external_monitor then
        next_workspace = last_even_workspace + 2    
    else
        next_workspace = last_odd_workspace + 2
    end

    move_to_workspace(next_workspace)
    
end


function focus_workspace(val)
    local external_monitor = get_external_monitor()
    
    if not external_monitor then
        move_to_workspace(val)
    else
        local active_monitor = hl.get_active_monitor()
        if active_monitor.name == external_monitor then
            val = "e+2"
        else
            val = "e-2"
        end

        move_to_workspace(val)
    end
end


