local cmd = vim.cmd
cmd('set mouse=a')
cmd('syntax on')

-- keymaps and settings
require('keymap')
require('settings')

-- plugins an realted options
require('plug')
require('config.dashboard')
require('config.bufferline')
-- require('config.tabline')
require('config.lsp')
require('config.compe') -- TODO: may replace with lspkind-nvim
require('config.lspkind')
require('config.autopairs')
require('config.nvimtree')
require('config.lualine')
require('config.nvim-comment')

cmd('colorscheme onedark')
cmd('set background=dark')
vim.g.everforest_background = "hard"


-- bufferline setup
vim.opt.termguicolors = true
require('nvim-treesitter.configs').setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { }, -- List of parsers to ignore installing
  highlight = {
    enable = true,  -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
