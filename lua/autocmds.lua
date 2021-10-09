--[[

    autocmds.lua
    This file defines various autocmds that nii-nvim uses

--]]

local cmd = vim.cmd

-- Don't show line numbers on terminal window
cmd([[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]])

-- # vim: foldmethod=marker
