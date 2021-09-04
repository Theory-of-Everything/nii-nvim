local scheme = require('scheme')
local cmd = vim.cmd

-- base command settings
cmd('set mouse=a')
cmd('syntax on')

-- load keybindings and editor options
require('keymap')
require('options')

-- load all of the packer plugins stuff
require('plug')

-- enable true color
vim.opt.termguicolors = true

-- Load Themes
-- load editor color theme
-- scheme.load_scheme('everforest')
-- load statusline theme
-- scheme.load_lualine_scheme('everforest')
-- if you don't  want to specify the theme for each component,
-- you can use the following function
scheme.load_shared_scheme('everforest')

-- load individual plugin configurations
require('config.dashboard')
require('config.bufferline')
require('config.lsp')
require('config.compe')
require('config.lspkind')
require('config.autopairs')
require('config.nvimtree')
require('config.lualine')
require('config.gitsigns')
require('config.nvim-comment')
require('config.nvim-treesitter')
require('config.nvim-colorizer')

-- load user-made modules
require('modules')
