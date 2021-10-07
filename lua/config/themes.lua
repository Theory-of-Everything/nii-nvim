local scheme = require('scheme')
local settings = require('modules.external-conf')

settings.load_settings()
local themes_list = {
    "bluewery", "everforest", "gruvbox-material", "gruvbox", "monokai",
    "night-owl", "nord", "onedark"
}

local current_shared_scheme = settings.get_value("shared-scheme", 'everforest')
local current_scheme = settings.get_value("scheme", 'everforest')
local current_lualine_scheme = settings.get_value("lualine-scheme", 'everforest')

local index_scheme = settings.index_of(themes_list, current_scheme)
local index_shared_scheme = settings.index_of(themes_list, current_shared_scheme)
local index_lualine_scheme = settings.index_of(themes_list, current_lualine_scheme)

-- Load default Themes
-- load editor color theme
-- scheme.load_scheme(current_scheme)
-- load statusline theme
-- scheme.load_lualine_scheme(current_lualine_scheme)
-- if you don't  want to specify the theme for each component,
-- you can use the following function
scheme.load_shared_scheme(current_shared_scheme)

--[[

    Cycle next theme

]]
function _G.cycle_scheme ()
    index_scheme = (index_scheme % #themes_list) + 1
    scheme.load_shared_scheme(themes_list[index_scheme])
    settings.set_value("shared-scheme", themes_list[index_scheme])
end
function _G.cycle_lualine_scheme ()
    index_lualine_scheme = (index_lualine_scheme % #themes_list) + 1
    scheme.load_shared_scheme(themes_list[index_lualine_scheme])
    settings.set_value("shared-scheme", themes_list[index_lualine_scheme])
end
function _G.cycle_shared_scheme ()
    index_shared_scheme = (index_shared_scheme % #themes_list) + 1
    print(index_shared_scheme)
    print(themes_list[index_shared_scheme])
    scheme.load_shared_scheme(themes_list[index_shared_scheme])
    settings.set_value("shared-scheme", themes_list[index_shared_scheme])
end

--[[
    Example to mapping
]]
vim.api.nvim_set_keymap("n", "<leader>tn", ":lua cycle_shared_scheme()<Cr>", {})
