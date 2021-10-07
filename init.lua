-- Load All packer
require('plug')
-- load keybindings and editor options
require('keymap')
require('options')
require('autocmds')

-- load theme loading library
local scheme = require('lib.scheme')

-- load theme system
require('config.themes')

-- load configurations
-- config.plug loads plugin configurations
-- config.module loads user contrib files (work in progress)
require('config.lsp')
require('config.plug')
require('config.modules')
