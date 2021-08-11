local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local o = vim.o

-- Settings module for setting settings for more globalized functions
local settings = {}

--[[
--	Global Setting Functions
--]]

function settings.mosue_mode(case)
	if case then
		cmd('set mouse='..case)
	end
end

function settings.spellcheck_lang(case)
	if not case then
		cmd('set spell spelllang=en')
	else
		cmd('set spell spelllang='..case)
	end
end

--[[
--	Settings Varibles
--]]

settings.telescope_method = "find_files"

return settings
