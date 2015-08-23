function print_table(t)
    for k, v in pairs(t) do
        print(k, "->", v)
    end
end

-- easy
function concatenate(a1, a2)
    a3 = {}
    for i = 1, #a1 do
        table.insert(a3, a1[i])
    end
    for i = 1, #a2 do
        table.insert(a3, a2[i])
    end
    return a3
end


_private = {}

function strict_read(table, key)
    if _private[key] then
        return _private[key]
    else
        error("Invalid key: " .. key)
    end
end

function strict_write(table, key, value)
    if _private[key] and value then
            error("Duplicate key: " .. key)
    else
        _private[key] = value
    end
end

mt = {
    __index = strict_read,
    __newindex = strict_write,
}

treasure = {}
setmetatable(treasure, mt)

treasure.gold = 50
treasure.gold = nil

