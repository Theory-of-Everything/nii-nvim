require('bufferline').setup({
	options = {
		indicator_icon = '▎',
		buffer_close_icon = '',
		modified_icon = '●',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',
		numbers = 'none',
		-- mappings = true,
		close_command = 'bdelete! %d',
		right_mouse_command = 'bdelete! %d',
		left_mouse_command = 'buffer %d',
		middle_mouse_command = nil,
		show_close_icon = 'false',
		seperator_style = 'padded_slant',
		diagnostics = 'nvim_lsp',
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			return '(' .. count .. ')'
		end,
	},
})
