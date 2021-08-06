local cmd = vim.cmd
local function map (mode, bind, exec, opts)
	local options = {noremap = true, silent = true}
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, bind, exec, opts)
end

local opt = {}  --empty opt for maps with no extra options

-- MAPPING:
--	map takes 4 args:
--		The first is the type, wether in all, normal, insert etc. (reference: https://github.com/nanotee/nvim-lua-guide#defining-mappings)
--		The Second Arg is the keybind. Just like normal vim way
--		The Third is the command to execute
--		The Fourth is other extra options
--
--	Example:
--		map("n", "<C-n>", ":set rnu!<Cr>", opt)

--map leader
cmd('let mapleader="Space"')

-- toggle line numbers
map("n", "<C-n>", ":set rnu!<Cr>", opt)

-- copy full file content
map("n", "<C-a>", ":%y+<CR>", opt)

-- comment line
map("", "<C-c>", ":CommentToggle<Cr>", opt)

-- nvim-tree binds
map("", "<C-t>", ":NvimTreeToggle<Cr>", opt)
