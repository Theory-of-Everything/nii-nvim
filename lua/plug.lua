require('packer').startup({
	function(use)
		-- packer self management
		use('wbthomason/packer.nvim')

		-- lsp realted plugins
		-- includes autocomplete and lsp suggestions
		use('neovim/nvim-lspconfig')
		use('kabouzeid/nvim-lspinstall')
		use('onsails/lspkind-nvim')

		-- autocompletion
		use({
			'hrsh7th/nvim-cmp',
			requires = {
				{ 'hrsh7th/cmp-nvim-lsp' },
				{ 'hrsh7th/cmp-path' },
				{ 'hrsh7th/cmp-buffer' },
			},
		})

		-- snippets
		use('sirver/ultisnips')
		use('quangnguyen30192/cmp-nvim-ultisnips')

		-- utility plugins
		-- these plugins are all realted to editor configs
		use({ 'hoob3rt/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } })
		use({ 'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons' })
		use({ 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } })
		use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })
		use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
		use('windwp/nvim-autopairs')
		use('terrortylor/nvim-comment')
		use('sbdchd/neoformat')
		use('phaazon/hop.nvim')

		-- cosmetic addition plugins
		-- these add in a bit more bling and flair to nvim
		use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
		use('glepnir/dashboard-nvim')
		use('norcalli/nvim-colorizer.lua')

		-- git realted plugins
		use({ 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } })

		-- themes
		-- popular themes incoming
		use('joshdick/onedark.vim')
		use('sickill/vim-monokai')
		use('morhetz/gruvbox')
		use('shaunsingh/nord.nvim')
		use('sainnhe/gruvbox-material')

		-- neesh themes
		use('sainnhe/everforest')
		use('relastle/bluewery.vim')
		use('haishanh/night-owl.vim')
	end,
	-- display packer dialouge in the center in a floating window
	config = {
		display = {
			open_fn = require('packer.util').float,
		},
	},
})
