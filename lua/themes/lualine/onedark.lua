-- Copyright (c) 2021 Jnhtr
-- MIT license, see LICENSE for more details.
-- LuaFormatter off
local colors = {
	base_fg = '#000000',
	light_fg = '#56B6C2',
	secondary = '#1f2228',
	background = '#17191E',
	norm_bg = '#E5C07B',
	ins_bg = '#61AFEF',
	vis_bg = '#C678DD',
	rep_bg = '#E06C75',
	cmd_bg = '#98C379',
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
		a = { bg = colors.int_bg, fg = colors.light_fg, gui = 'bold' },
		b = { bg = colors.secondary, fg = colors.light_fg },
		c = { bg = colors.background, fg = colors.light_fg },
	},
}
