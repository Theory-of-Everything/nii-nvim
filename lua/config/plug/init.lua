--[[
This init file loads all of the plugin configuration files
--]]

return {
	require('config.plug.hop'),
	require('config.plug.cmp'),
	require('config.plug.lualine'),
	require('config.plug.lspkind'),
	require('config.plug.tabline'),
	require('config.plug.nvimtree'),
	require('config.plug.gitsigns'),
	require('config.plug.ultisnips'),
	require('config.plug.dashboard'),
	require('config.plug.autopairs'),
	require('config.plug.telescope'),
	require('config.plug.nvimcomment'),
	require('config.plug.nvimcolorizer'),
	require('config.plug.treesitter'),
}

-- # vim foldmethod=marker
