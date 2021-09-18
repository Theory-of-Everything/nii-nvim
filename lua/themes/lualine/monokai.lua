-- Copyright (c) 2021 Jnhtr
-- MIT license, see LICENSE for more details.
-- LuaFormatter off
local colors = {
	base_fg = '#272822',
	light_fg = '#D6D6D6',
	secondary = '#3c3d39',
	background = '#31322c',
	norm_bg = '#A6E33E',
	ins_bg = '#F92672',
	vis_bg = '#66D9EF',
	rep_bg = '#E06C75',
	cmd_bg = '#E6DB74',
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
		a = { bg = colors.int_bg, fg = colors.white, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.light_fg },
		c = { bg = colors.background, fg = colors.light_fg },
	},
}
