local scheme = require('lib.scheme')

-- load keybindings and editor options
require('keymap')
require('options')

-- load all of the packer plugins stuff
require('plug')

-- Load Themes
-- load editor color theme
-- scheme.load_scheme('everforest')
-- load statusline theme
-- scheme.load_lualine_scheme('everforest')
-- if you don't  want to specify the theme for each component,
-- you can use the following function
scheme.load_shared_scheme('everforest')

-- load configurations
require('config.plug')
require('config.modules')
