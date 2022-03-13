require('telescope').setup({
	defaults = {
		prompt_prefix = '=> ',
		selection_caret = ' > ',
		entry_prefix = '   ',
		-- borderchars = { '═', '│', '═', '│', '╒', '╕', '╛', '╘' },
		sorting_strategy = "ascending",

		layout_strategy = 'bottom_pane',
		layout_config = {
			height = 25,
		},
		borderchars = {
			prompt = { '═', ' ', ' ', ' ', '═', '═', ' ', ' ' },
			results = { ' ' },
			preview = { ' ', ' ', ' ', '│', '│', ' ', ' ', '│' },
		},
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

-- ignore files that are larger than a certain size
local previewers = require('telescope.previewers')
local new_maker = function(filepath, bufnr, opts)
	opts = opts or {}

	filepath = vim.fn.expand(filepath)
	vim.loop.fs_stat(filepath, function(_, stat)
		if not stat then
			return
		end
		if stat.size > 100000 then
			return
		else
			previewers.buffer_previewer_maker(filepath, bufnr, opts)
		end
	end)
end

require('telescope').setup({
	defaults = {
		buffer_previewer_maker = new_maker,
	},
})

require('telescope').load_extension('fzf')
