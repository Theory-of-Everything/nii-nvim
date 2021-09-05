-- load keybindings and editor options
require('keymap')
require('options')

-- load all of the packer plugins stuff
require('plug')

-- enable true color
vim.opt.termguicolors = true

-- load theme system
require('config.themes')

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
