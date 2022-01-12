--[[
	Setup script for the lua lsp server sumneko
--]]
local fn = vim.fn

-- check for the underlying operating system
local system_name
if fn.has('mac') == 1 then
	system_name = 'macOS'
elseif fn.has('unix') == 1 then
	system_name = 'Linux'
elseif fn.has('win32') == 1 then
	system_name = 'Windows'
else
	print('Unsupported system for sumneko')
end

-- set the path to the sumneko installation (ABSOLUTE PATH)
local sumneko_install_path = fn.stdpath('data') .. '/lspservers/lua-language-server'
local pathcheck = sumneko_install_path .. '/bin/' .. system_name
local sumneko_binary

-- check of weird build directories
if fn.isdirectory(pathcheck) > 0 then
	-- set binary path to that with a system directory
	sumneko_binary = sumneko_install_path .. '/bin/' .. system_name .. '/lua-language-server'
else
	-- set binary path to just the (oddly) bin directory
	sumneko_binary = sumneko_install_path .. '/bin/lua-language-server'
end

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

require('lspconfig').sumneko_lua.setup({
	cmd = { sumneko_binary, '-E', sumneko_install_path .. '/main.lua' },
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
				-- Setup your lua path
				path = runtime_path,
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file('', true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
})
