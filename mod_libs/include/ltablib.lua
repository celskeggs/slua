local table = ...

local get_raw = table.getrawmeta
table.getrawmeta = nil

local function check_field(meta, key)
    return nil ~= rawget(meta, key)
end

local function check_table(tab, read, write, len)
    if type(tab) == "table" then return end
    local has_meta, meta = get_raw(tab)
    if not has_meta
            or (read and rawget(meta, "__index") == nil)
            or (write and rawget(meta, "__newindex") == nil)
            or (len and rawget(meta, "__len") == nil) then
        error("table expected")
    end
end

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

function table.move(a1, f, e, t, a2)
    f, e, t = math.tointeger(f), math.tointeger(e), math.tointeger(t)
    if not f or not e or not t then error('argument is not an integer') end
    if nil == a2 then a2 = a1 end
    check_table(a1)
    check_table(a2)
    if e >= f then
        if not (f > 0 or e < math.maxinteger + f) then error('too many elements to move') end
        local n = e - f + 1
        if t > math.maxinteger - n + 1 then error("destination wrap around") end
        if t > e or t <= f or a1 ~= a2 then
            for i = 0, n do
                a2[t + i] = a1[f + i]
            end
        else
            for i = n - 1, 0, -1 do
                a2[t + i] = a1[f + i]
            end
        end
    end
    return a2
end
