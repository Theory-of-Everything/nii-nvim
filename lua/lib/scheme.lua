local scheme = {}

local lualine_def_themes = {
	-- list of installed themes from the lualine repo
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

scheme.is_lualine_default = false

function scheme.load_scheme(choice)
	require("themes." .. choice)
end

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

function scheme.load_shared_scheme(choice)
	require("themes." .. choice)
	scheme.scheme = choice
end

return scheme
