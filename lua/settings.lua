local cmd = vim.cmd
local o = vim.o

cmd('syntax enable')
cmd('set nu')
o.completeopt = "menuone,noselect"
-- cmd('set splitbelow splitright!')
