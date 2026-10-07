local m = {}


m.merge = function(t1, t2) for k, v in pairs(t2) do t1[k] = v end return t1 end

function m.contains(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

return m
