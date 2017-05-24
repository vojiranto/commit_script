function file_write (f, txt)
    local file = io.open (f, "w")
    file:write(txt)
    file:flush()
    file:close()
end
