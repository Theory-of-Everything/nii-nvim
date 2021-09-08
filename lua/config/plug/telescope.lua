require("telescope").setup({
	extensions = {
		fzf = {
			fuzzy = true,
			override_genearic_sorter = false,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})
require("telescope").load_extension("fzf")
