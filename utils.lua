local utils = {}

function utils.get_lists(file)
    local f = io.open(file, 'r')
    
    if not f then return nil end
    local content = f:read('*a')
    f:close()
    return content
end


return utils