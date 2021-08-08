return require('packer').startup(function(use)
	-- packer self management
	use 'wbthomason/packer.nvim'

	-- lsp realted plugins
	-- includes autocomplete and lsp suggestions
	use 'neovim/nvim-lspconfig'
	use 'kabouzeid/nvim-lspinstall'
	use 'nvim-lua/completion-nvim'
	use 'hrsh7th/nvim-compe'
	use 'onsails/lspkind-nvim'

	-- utility plugins
	-- these plugins are all realted to editor configs
	use 'windwp/nvim-autopairs'
	use { 'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }
	use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
	use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
	use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'terrortylor/nvim-comment'

	-- cosmetic addition plugins
	-- these add in a bit more bling and flair to nvi
    	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'glepnir/dashboard-nvim'

	-- themes
	use "sainnhe/everforest"	-- everforest
	use "relastle/bluewery.vim"	-- bluewery
	use "joshdick/onedark.vim"	-- onedark

	-- TODO: Add support for galaxyline
	-- statusline (galaxyline)
	--use {
	--	'glepnir/galaxyline.nvim',
	--	branch = 'main',
	--	config = function() require('theme/statusline') end,
	--	requires = {'kyazdani42/nvim-web-devicons', opt = true}
	--}
end)
