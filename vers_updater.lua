#!/usr/bin/lua5.2
dofile ("./version.lua")
dofile ("./file_write.lua")

-- изменяем версию.
if arg[1] == "Up" then 
    v1 = v1 + 1; v2 = 0; v3 = 0
elseif  arg[1] == "up" then
    v2 = v2 + 1; v3 = 0
else
    v3 = v3 + 1
end

file_write ("./version.lua", 
    "v1 = ".. v1 .."\n"..
    "v2 = ".. v2 .."\n"..
    "v3 = ".. v3 .."\n")

io.write ("v."..v1.."."..v2.."."..v3)
