-- Copyright (c) 2021 Jnhtr
-- MIT license, see LICENSE for more details.
-- LuaFormatter off
local colors = {
	black = '#32302f',
	white = '#d4be98',
	red = '#ea6962',
	green = '#a9b665',
	blue = '#7daea3',
	yellow = '#e78a4e',
	darkgray = '#32302f',
	gray = '#3a3735',
	lightgray = '#504945',
	inactivegray = '#3c3432',
}
--LuaFormatter on
return {
	normal = {
		a = { bg = colors.white, fg = colors.black, gui = 'bold' },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	insert = {
		a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	visual = {
		a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	replace = {
		a = { bg = colors.red, fg = colors.black, gui = 'bold' },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	command = {
		a = { bg = colors.green, fg = colors.black, gui = 'bold' },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	inactive = {
		a = { bg = colors.inactivegray, fg = colors.lightgray, gui = 'bold' },
		b = { bg = colors.inactivegray, fg = colors.lightgray },
		c = { bg = colors.inactivegray, fg = colors.lightgray },
	},
}
