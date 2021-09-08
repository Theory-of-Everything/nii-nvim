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
--		map("n", "<C-n>", ":set rnu!<CR>", opt)

vim.g.mapleader = " "                             -- Map leader key to space
map("n", "<C-n>", ":set rnu!<CR>", opt)           -- toggle relative line numbers
map("n", "<C-a>", ":%y+<CR>", opt)                -- Copy content of entire buffer to system clipboard
map("",  "<C-c>", ":CommentToggle<CR>", opt)      -- toggle comment on current line or selection
map("",  "<C-t>", ":NvimTreeToggle<CR>", opt)     -- toggle nvimtree
map("n", "<leader>nf", ":Neoformat<CR>", {noremap = true})    -- format current buffer with neoformat

-- compe keybinds
map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("i", "<C-E>", "<Plug>luasnip-next-choice", {})
map("s", "<C-E>", "<Plug>luasnip-next-choice", {})

-- dashbaord commands
map("n", "<leader>~", ":Dashboard<CR>", opt)

-- buffer management
map("n", "<leader>bh", ":bf<CR>", {noremap = true})
map("n", "<leader>bk", ":bn<CR>", {noremap = true})
map("n", "<leader>bj", ":bp<CR>", {noremap = true})
map("n", "<leader>bl", ":bl<CR>", {noremap = true})
map("n", "<leader>bd", ":bd<CR>", {noremap = true})

-- telescope pullup
map("n", "<leader>ff", ":Telescope find_files<CR>",   {noremap = true})
map("n", "<leader>fF", ":Telescope file_browser<CR>", {noremap = true})
map("n", "<leader>fg", ":Telescope git_commits<CR>",  {noremap = true})
map("n", "<leader>fG", ":Telescope git_branches<CR>", {noremap = true})
