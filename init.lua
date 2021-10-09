-- Load All packer
require('plug')

-- load keybindings and editor options
require('keymap')
require('options')
require('autocmds')

-- load theme loading library
local scheme = require('lib.scheme')

-- Load Themes (loads everforest theme by default)
-- load editor color theme
-- scheme.load_scheme('everforest')

-- load statusline theme
-- scheme.load_lualine_scheme('everforest')

-- if you don't  want to specify the theme for each component,
-- you can use the following function
scheme.load_shared_scheme('everforest')

-- load configurations
-- config.plug loads plugin configurations
-- config.lsp handles al lsp server configuration
-- config.module loads user contrib files (work in progress)
require('config.lsp')
require('config.plug')
require('config.modules')

-- # vim foldmethod=marker
