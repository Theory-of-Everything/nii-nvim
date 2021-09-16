
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
local scheme = {}

-- list of pre-packaged lualine themes
local lualine_def_themes = {
	"16color",
	"ayu_dark",
	"ayu_light",
	"ayu_mirage",
	"codedark",
	"dracula",
	"gruvbox",
	"gruvbox_light",
	"gurvbox_material",
	"horizon",
	"iceberg_dark",
	"iceberg_light",
	"jellybeans",
	"material",
	"modeus_vivendi",
	"molokai",
	"nightfly",
	"nord",
	"oceanicnext",
	"onedark",
	"onelight",
	"palenight",
	"papercolor_dark",
	"papercolor_light",
	"powerline",
	"seoul256",
	"solarized_dark",
	"solarized_light",
	"tommorow",
	"wombat",
}

-- if the scheme bundled with lualine?
scheme.is_lualine_default = false

-- pretty wrapper for loading theme files
function scheme.load_scheme(choice)
	require("themes." .. choice)
end

-- checks if the arg is a theme in the default themes list,
-- otherwise it requires a file
function scheme.load_lualine_scheme(choice)
	scheme.scheme = choice
	local is_present = false
	for i, name in ipairs(lualine_def_themes) do
		if name == choice then
			is_present = true
			scheme.is_lualine_default = true
			scheme.scheme = name
		end
	end
	if is_present == false then
		scheme.is_lualine_default = false
		scheme.scheme = choice
	end
end

-- loads both editor and statusline scheme
-- simultaniously
function scheme.load_shared_scheme(choice)
   require("themes." .. choice)
   scheme.load_lualine_scheme(choice)
end

return scheme
