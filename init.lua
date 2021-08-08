local scheme = require('scheme')
local cmd = vim.cmd

-- base command settings
cmd('set mouse=a')
cmd('syntax on')

-- keymaps and settings
require('keymap')
require('settings')

-- plugins an related options
require('plug')

vim.opt.termguicolors = true
scheme.load_scheme('night-owl')
scheme.load_lualine_scheme('minimaldark')

-- load plugin configuration
require('config.dashboard')
require('config.bufferline')
require('config.lsp')
require('config.compe')
require('config.lspkind')
require('config.autopairs')
require('config.nvimtree')
require('config.lualine')
require('config.nvim-comment')
require('config.nvim-treesitter')
require('config.nvim-colorizer')
