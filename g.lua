local _A_ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" local _B_ = {} for i = 1, #_A_ do _B_[_A_:sub(i, i)] = i - 1 end local _D_ = function(s) local t = {} local p = 1 for i = 1, #s, 4 do local n = 0 local v = 0 local c = 0 for j = 0, 3 do local ch = s:sub(i + j, i + j) local idx = _B_[ch] if idx then v = (v * 64) + idx c = c + 1 end end if c >= 2 then t[p] = string.char(v / 65536 % 256) p = p + 1 end if c >= 3 then t[p] = string.char(v / 256 % 256) p = p + 1 end if c >= 4 then t[p] = string.char(v % 256) p = p + 1 end end return table.concat(t) end local _E_ = "Z2V0Z2VudigpLnByaW50aWRlbnRpdHkgPSBmdW5jdGlvbigpCiAgICBwcmludCgiQ3VycmVudCBJZGVudGl0eSBJcyA2IikKZW5k" local _X_ = _D_(_E_) if loadstring then loadstring(_X_)() elseif load then load(_X_)() end
local _lI1 = getgenv()
local Il1 = string.char
local l1I = Il1(83, 101, 110, 100, 78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110)
if _lI1[l1I] then
    local I1l = _lI1[l1I]
    local lI1 = Il1(120, 101, 110, 111)
    _lI1[l1I] = function(...)
        local _1l = {...}
        if type(_1l[1]) == Il1(115, 116, 114, 105, 110, 103) and _1l[1]:lower():find(lI1) then
            return
        end
        return I1l(...)
    end
    _lI1.warn(Il1(99, 108, 111, 115, 101, 100, 69))
end
--// stop
