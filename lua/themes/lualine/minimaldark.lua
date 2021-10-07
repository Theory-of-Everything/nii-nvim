-- Copyright (c) 2021 Jnhtr
-- MIT license, see LICENSE for more details.
-- LuaFormatter off
local colors = {
	font = '#ffffff',
	primary = '#3a3a3a',
	secondary = '#4e4e4e',
	background = '#262626',
}
--LuaFormatter on
return {
	normal = {
		a = { bg = colors.primary, fg = colors.white, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.white },
		c = { bg = colors.background, fg = colors.white },
	},
	insert = {
		a = { bg = colors.primary, fg = colors.white, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.white },
		c = { bg = colors.background, fg = colors.white },
	},
	visual = {
		a = { bg = colors.primary, fg = colors.white, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.white },
		c = { bg = colors.background, fg = colors.white },
	},
	replace = {
		a = { bg = colors.primary, fg = colors.white, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.white },
		c = { bg = colors.background, fg = colors.white },
	},
	command = {
		a = { bg = colors.primary, fg = colors.white, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.white },
		c = { bg = colors.background, fg = colors.white },
	},
	inactive = {
		a = { bg = colors.primary, fg = colors.white, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.white },
		c = { bg = colors.background, fg = colors.white },
	},
}
