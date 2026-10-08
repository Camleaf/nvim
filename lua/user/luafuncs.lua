local m = {}


m.merge = function(t1, t2)
  local out = {}
  for _, v in ipairs(t1) do out[#out + 1] = v end
  for _, v in ipairs(t2) do out[#out + 1] = v end
  return out
end

function m.contains(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

return m
