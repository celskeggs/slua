local table = ...

function table.insert(t, pos, ...)
    local elem
    local count = select("#", ...)
    local e = math.tointeger(#t)
    if not e then error('object length is not an integer') end
    if count < 1 then
        elem = pos
        pos = e + 1
    elseif count > 1 then
        error("wrong number of arguments to 'insert'")
    else
        elem = select(1, ...)
        pos = math.tointeger(pos)
        if pos < 1 or pos > e + 1 then
            error('position out of bounds')
        end
    end
    local len = #t
    for i = len, pos, -1 do
        t[i + 1] = t[i]
    end
    t[pos] = elem
end

function table.remove(t, i)
    local len = math.tointeger(#t)
    if not len then error('object length is not an integer') end
    local p = math.tointeger(i) or len
    if p ~= len and (p < 1 or p > len + 1) then error('position out of bounds') end
    local ret = t[p]
    while p < len do
        t[p] = t[p + 1]
        p = p + 1
    end
    t[p] = nil
    return ret
end
