local scheme = require('lib.scheme')

require('tabline').setup({
	-- Defaults configuration options
	enable = true,
	options = {
		-- If lualine is installed tabline will use separators configured in lualine by default.
		-- These options can be used to override those settings.
		section_separators = { scheme.tabline_style_left, scheme.tabline_style_right },
		component_separators = { scheme.tabline_seperator_left, scheme.tabline_seperator_right },
		max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
		show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
		show_devicons = true, -- this shows devicons in buffer section
		show_bufnr = false, -- this appends [bufnr] to buffer section,
		show_filename_only = true, -- shows base filename only instead of relative path in filename
	},
})

-- # vim foldmethod=marker
