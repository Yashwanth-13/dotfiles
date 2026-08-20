local function get_external_monitor()
    local monitors = hl.get_monitors()
    if #monitors > 1 then
        return monitors[2]
    else
        return nil
    end

end

local function move_to_workspace(wrkspc)
    hl.dispatch(hl.dsp.focus({workspace = wrkspc}))
end

local function get_monitor_workspaces(need_end_workspaces, need_even)
    local workspaces = hl.get_workspaces()
    local last_workspace = nil
    local even_workspaces, odd_workspaces = {}, {}
    for i, workspace in ipairs(workspaces) do
        if not workspace.special then    
            if workspace.id % 2 == 0 then even_workspaces[#even_workspaces+1] = workspace.id
            else odd_workspaces[#odd_workspaces+1] = workspace.id
            end
            last_workspace = workspace.id
        end
    end
    if need_end_workspaces then
        return {last_workspace, even_workspaces[#even_workspaces], odd_workspaces[#odd_workspaces]}
    elseif need_even then return even_workspaces
    else return odd_workspaces
    end
end

local function get_workspace_position(workspace_pool, current_position)
    for i, workspace in ipairs(workspace_pool) do
        if workspace == current_position then
            return i
        end
    end
end

local function get_next_position(current_position, pool_length, is_ahead)
    local offset = nil
    if is_ahead then
        offset = 1
    else
        offset = -1
    end

    return ((current_position - 1 + offset) % pool_length) + 1
end

function Add_Workspace()
    return function ()
        local LAST, LAST_EVEN, LAST_ODD = 1, 2, 3
        local external_monitor, next_workspace = get_external_monitor(), 2
        local end_workspaces = get_monitor_workspaces(true, nil)

        if not external_monitor then
            next_workspace = end_workspaces[LAST] + 1
            move_to_workspace(next_workspace)
            return
        end

        local active_monitor = hl.get_active_monitor()
        if active_monitor.name == external_monitor.name then
            next_workspace = next_workspace + end_workspaces[LAST_EVEN]
        else
            next_workspace = next_workspace + end_workspaces[LAST_ODD]
        end

        move_to_workspace(next_workspace)
    end
end

function Focus_Workspace(is_ahead)
    return function ()
        local external_monitor = get_external_monitor()
    
        if not external_monitor then
            if is_ahead then move_to_workspace("e+1") else move_to_workspace("e-1") end
        else
            local current_workspace = hl.get_active_workspace()
            local is_external_display = current_workspace.monitor.name == external_monitor.name
            
            local current_workspace_pool = get_monitor_workspaces(false, is_external_display)
            local current_workspace_id = get_workspace_position(current_workspace_pool, current_workspace.id)
            move_to_workspace(current_workspace_pool[get_next_position(current_workspace_id, #current_workspace_pool, is_ahead)])

        end
    end
end


