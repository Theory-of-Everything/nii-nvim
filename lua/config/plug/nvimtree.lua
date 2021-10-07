local g = vim.g

g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
g.nvim_tree_gitignore = 1
g.nvim_tree_auto_ignore_ft = { 'startify', 'dashboard' }
g.nvim_tree_quit_on_open = 0
g.nvim_tree_indent_markers = 1
g.nvim_tree_hide_dotfiles = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_root_folder_modifier = ':~'
g.nvim_tree_add_trailing = 1
g.nvim_tree_group_empty = 1
g.nvim_tree_disable_window_picker = 0
g.nvim_tree_icon_padding = ' '
g.nvim_tree_symlink_arrow = ' >> '
g.nvim_tree_show_icons = {
	git = 1,
	folders = 1,
	files = 1,
}

require('nvim-tree').setup({
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = false,
	ignore_ft_on_setup = {},
	auto_close = false,
	open_on_tab = false,
	hijack_cursor = false,
	update_cwd = false,
	lsp_diagnostics = false,

	update_focused_file = {
		enable = false,
		update_cwd = false,
		ignore_list = {},
	},

	system_open = {
		cmd = nil,
		args = {},
	},

	view = {
		width = 30,
		side = 'left',
		auto_resize = false,
		mappings = {
			custom_only = false,
			list = {},
		},
	},
})
