require('telescope').setup({
	defaults = {
		prompt_prefix = '=> ',
		selection_caret = '=> ',
		entry_prefix = '   ',
		borderchars = { '═', '│', '═', '│', '╒', '╕', '╛', '╘' },
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_genearic_sorter = false,
			override_file_sorter = true,
			case_mode = 'smart_case',
		},
	},
})
require('telescope').load_extension('fzf')
