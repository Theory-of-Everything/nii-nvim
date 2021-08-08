return require('packer').startup(function(use)
	-- packer self management
	use 'wbthomason/packer.nvim'

	-- lsp realted plugins
	-- includes autocomplete and lsp suggestions
	use 'neovim/nvim-lspconfig'		-- nvim lsp implementaion plugin
	use 'kabouzeid/nvim-lspinstall'		-- utility for installing lsp servers
	use 'hrsh7th/nvim-compe'		-- autocompletion support
	use 'onsails/lspkind-nvim'		-- lsp gui suggestions

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
	use 'norcalli/nvim-colorizer.lua'

	-- themes
	-- popular themes incoming
	use "joshdick/onedark.vim"	-- onedark
	use "phanviet/vim-monokai-pro"	-- monokai
	use "morhetz/gruvbox"		-- gruvbox
	use "shaunsingh/nord.nvim"	-- nord

	-- neesh themes
	use "sainnhe/everforest"	-- everforest
	use "relastle/bluewery.vim"	-- bluewery

	-- TODO: Add support for galaxyline
	-- statusline (galaxyline)
	--use {
	--	'glepnir/galaxyline.nvim',
	--	branch = 'main',
	--	config = function() require('theme/statusline') end,
	--	requires = {'kyazdani42/nvim-web-devicons', opt = true}
	--}
end)
