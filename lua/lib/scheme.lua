local scheme = {}

function scheme.load_scheme(choice)
	require("themes."..choice)
end

function scheme.load_lualine_scheme(choice)
	scheme.scheme = choice
end

function scheme.load_shared_scheme(choice)
	require("themes."..choice)
	scheme.scheme = choice
end

return scheme
