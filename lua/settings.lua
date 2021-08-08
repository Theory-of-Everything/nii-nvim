local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local o = vim.o

local settings = {}

function enable_mosue(case)
	cmd('set mouse='..case)
end

return settings
