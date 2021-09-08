return require('packer').startup(function(use)
	-- packer self management
	use 'wbthomason/packer.nvim'

	-- lsp realted plugins
	-- includes autocomplete and lsp suggestions
	use 'neovim/nvim-lspconfig'		    -- nvim lsp implementaion plugin
	use 'kabouzeid/nvim-lspinstall'		-- utility for installing lsp servers
	use 'hrsh7th/nvim-compe'		    -- autocompletion support
	use 'onsails/lspkind-nvim'		    -- lsp gui suggestions
    use 'L3MON4D3/luasnip'              -- Snippet Engine

	-- utility plugins
	-- these plugins are all realted to editor configs
	use 'windwp/nvim-autopairs'
	use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }
	use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
	use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
	use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
	use 'terrortylor/nvim-comment'
	use 'sbdchd/neoformat'
    use 'phaazon/hop.nvim'

	-- cosmetic addition plugins
	-- these add in a bit more bling and flair to nvim
    	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use 'glepnir/dashboard-nvim'
	use 'norcalli/nvim-colorizer.lua'

	-- git realted plugins
	use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}

	-- themes
	-- popular themes incoming
	use 'joshdick/onedark.vim'	    -- onedark
	use 'sickill/vim-monokai'	    -- monokai
	use 'morhetz/gruvbox'		    -- gruvbox
	use 'shaunsingh/nord.nvim'	    -- nord
	use 'sainnhe/gruvbox-material'  -- gruvbox-material


	-- neesh themes
	use 'sainnhe/everforest'	    -- everforest
	use 'relastle/bluewery.vim'	    -- bluewery
	use 'haishanh/night-owl.vim'	-- Night Owl
end)
