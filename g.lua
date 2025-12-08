-- goon module thanks to c
local _A_ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local _B_ = {}
for i = 1, #_A_ do
    _B_[_A_:sub(i, i)] = i - 1
end
local _D_ = function(s)
    local t = {}
    local p = 1
    for i = 1, #s, 4 do
        local n = 0
        local v = 0
        local c = 0
        for j = 0, 3 do
            local ch = s:sub(i + j, i + j)
            local idx = _B_[ch]
            if idx then
                v = (v * 64) + idx
                c = c + 1
            end
        end
        if c >= 2 then
            t[p] = string.char(v / 65536 % 256)
            p = p + 1
        end
        if c >= 3 then
            t[p] = string.char(v / 256 % 256)
            p = p + 1
        end
        if c >= 4 then
            t[p] = string.char(v % 256)
            p = p + 1
        end
    end
    return table.concat(t)
end
local _E_ = "Z2V0Z2VudigpLnByaW50aWRlbnRpdHkgPSBmdW5jdGlvbigpCiAgICBwcmludCgiQ3VycmVudCBJZGVudGl0eSBJcyA2IikKZW5k"
local _X_ = _D_(_E_)
if loadstring then
    loadstring(_X_)()
elseif load then
    load(_X_)()
end
