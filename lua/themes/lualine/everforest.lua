-- Copyright (c) 2021 Jnhtr
-- MIT license, see LICENSE for more details.
-- LuaFormatter off
local colors = {
	base_fg = '#2F383E',
	light_fg = '#9DA9A0',
    secondary = '#445055',
	background = '#384348',
	norm_bg = '#A7C080',
	ins_bg = '#7FBBB3',
	vis_bg = '#D699B6',
	rep_bg = '#E68E80',
	cmd_bg = '#83C092',
	int_bg = '#282C34',
}
--LuaFormatter on
return {
	normal = {
		a = { bg = colors.norm_bg, fg = colors.base_fg, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.light_fg },
		c = { bg = colors.background, fg = colors.light_fg },
	},
	insert = {
		a = { bg = colors.ins_bg, fg = colors.base_fg, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.light_fg },
		c = { bg = colors.background, fg = colors.light_fg },
	},
	visual = {
		a = { bg = colors.vis_bg, fg = colors.base_fg, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.light_fg },
		c = { bg = colors.background, fg = colors.light_fg },
	},
	replace = {
		a = { bg = colors.rep_bg, fg = colors.base_fg, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.light_fg },
		c = { bg = colors.background, fg = colors.light_fg },
	},
	command = {
		a = { bg = colors.cmd_bg, fg = colors.base_fg, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.light_fg },
		c = { bg = colors.background, fg = colors.light_fg },
	},
	inactive = {
		a = { bg = colors.int_bg, fg = colors.base_fg, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.light_fg },
		c = { bg = colors.background, fg = colors.light_fg },
	},
}
