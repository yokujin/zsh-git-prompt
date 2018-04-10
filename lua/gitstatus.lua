
cmd = 'git symbolic-ref HEAD'

local handle = io.popen(cmd)
local result = handle:read("*a")
handle:close()

io.write("git answer: ", result)

