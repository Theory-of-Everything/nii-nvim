-- load scheme wrapper library
local scheme = require("lib.scheme")

-- current set lualine theme
local lualine_theme = nil
local lualine_style = nil

-- if a scheme is not bundled with lualine, look for a theme file
if scheme.is_lualine_default == false then
	lualine_theme = require("themes.lualine." .. scheme.scheme)
else
    lualine_theme = scheme.scheme
end

-- lualine setup config
require("lualine").setup({
	options = {
		-- section_separators = { "", "" },
		section_separators = scheme.lualine_style,
		component_separators = scheme.lualine_style,
		theme = lualine_theme,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})
