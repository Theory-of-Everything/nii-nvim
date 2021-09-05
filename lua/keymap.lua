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
--		The first is the type, whether in all, normal, insert etc. (reference: https://github.com/nanotee/nvim-lua-guide#defining-mappings)
--		The Second Arg is the keybind. Just like normal vim way
--		The Third is the command to execute
--		The Fourth is other extra options
--
--	Example:  (toggles line numbers)
--		map("n", "<C-n>", ":set rnu!<Cr>", opt)

--map leader
cmd('let mapleader=" "')

-- toggle line numbers
map("n", "<C-n>", ":set rnu!<CR>", opt)

-- copy full file content
map("n", "<leader>ya", ":%y+<CR>", opt)

-- comment line
map("", "<C-c>", ":CommentToggle<Cr>", opt)

-- nvim-tree binds
map("", "<C-t>", ":NvimTreeToggle<Cr>", opt)

-- compe keybinds
-- map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- dashbaord commands
map("n", "<leader>~", ":Dashboard<CR>", opt)

-- buffer management
map("n", "<leader>h", ":bf<CR>", opt)
map("n", "<leader>k", ":bn<CR>", opt)
map("n", "<leader>j", ":bp<CR>", opt)
map("n", "<leader>l", ":bl<CR>", opt)
map("n", "<leader>d", ":bd<CR>", opt)

-- telescope pullup
map("n", "<leader>f", ":Telescope find_files<CR>", opt)
map("n", "<leader>F", ":Telescope file_browser<CR>", opt)
map("n", "<leader>g", ":Telescope git_commits<CR>", opt)
map("n", "<leader>G", ":Telescope git_branches<CR>", opt)
