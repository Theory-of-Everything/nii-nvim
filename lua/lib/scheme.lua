--[[
scheme.lua
This file is wrapper code for handiling loading themes for the statusline
and for neovim

Lualine has some default themes that are bundled with it, so lualine_def_themes
contains a list of all the default themes for lualine

Themes are primarily loaded via require()ing files in the lua/themes/
directory

--]]

-- module definition
local M = {}

-- {{{ list of pre-packaged lualine themes
-- NOTE: certain lualine default themes are exculded for
-- improved asthetic changes
local lualine_def_themes = {
	'16color',
	'ayu_dark',
	'ayu_light',
	'ayu_mirage',
	'codedark',
	'dracula',
	'gruvbox',
	'gruvbox_light',
	'gurvbox_material',
	'horizon',
	'iceberg_dark',
	'iceberg_light',
	'jellybeans',
	'material',
	'modeus_vivendi',
	'molokai',
	'nightfly',
	'nord',
	'oceanicnext',
	'onedark',
	'onelight',
	'palenight',
	'papercolor_dark',
	'papercolor_light',
	'powerline',
	'seoul256',
	'solarized_dark',
	'solarized_light',
	'tommorow',
	'wombat',
}

-- string-based theme definitions for lualine schemes [WIP]
local lualine_def_styles = {
	'powerline',
	'dotline',
	'chevron',
}
-- }}}

-- {{{ varible definitions
M.scheme = 'everforest' -- specifies scheme. default is "everforest"
M.lualine_style = { '', '' } -- specifies lualine style
M.lualine_seperator = { '', '' } -- specifies lualine seperator style

-- if the scheme bundled with lualine?
-- used in config/plug/lualine.lua
M.is_lualine_default = false

-- local indicators if a scheme has been loaded
local scheme_loaded = false
-- }}}

-- {{{ scheme loaders
-- pretty wrapper for loading theme files
-- @param choice string
-- The scheme name to load
function M.load_scheme(choice)
	require('themes.' .. choice)
	scheme_loaded = true
end

-- checks if the arg is a theme in the default themes list,
-- otherwise it requires a file
-- @param choice string
-- The scheme name to load
function M.load_lualine_scheme(choice)
	M.scheme = choice
	local is_present = false
	for i, name in ipairs(lualine_def_themes) do
		if name == choice then
			is_present = true
			M.is_lualine_default = true
			M.scheme = name
		end
	end
	if is_present == false then
		M.is_lualine_default = false
		M.scheme = choice
	end
	scheme_loaded = true
end

-- loads both editor and statusline scheme simultaniously
-- @param choice string
-- The scheme name to load
function M.load_shared_scheme(choice)
	require('themes.' .. choice)
	M.load_lualine_scheme(choice)
	scheme_loaded = true
end
-- }}}

-- {{{ styles
-- sets the style for the lualine bar
-- @param choice table
-- used in config/plus/lualine.lua
function M.set_lualine_style(choice)
	if type(choice) == 'table' then
		M.lualine_style = { choice[1], choice[2] }
	else
		M.lualine_style = { '', '' }
	end
end

-- sets the style for the lualine seperators
-- @param choice table
-- used in config/plus/lualine.lua
function M.set_lualine_seperator(choice)
	if type(choice) == 'table' then
		M.lualine_seperator = { choice[1], choice[2] }
	else
		M.lualine_seperator = { '', '' }
	end
end
-- }}}

-- checks if a scheme has been specified by the user
-- if not, loads default scheme
if scheme_loaded == false then
	require('themes.' .. M.scheme)
	M.load_lualine_scheme(M.scheme)
end

return M

-- # vim foldmethod=marker
