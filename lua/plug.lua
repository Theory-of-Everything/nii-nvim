require('packer').startup({
	function(use)
		-- packer self management
		use('wbthomason/packer.nvim')

		-- {{{ lsp/autocompletion/snippets
		-- lsp plugins
		use({ 'neovim/nvim-lspconfig', commit = '9069d14' })
		use({ 'onsails/lspkind-nvim', commit = '57e5b5d' })

		-- autocompletion
		use({
			'hrsh7th/nvim-cmp',
			requires = {
				{ 'hrsh7th/cmp-nvim-lsp', commit = 'ebdfc20' },
				{ 'hrsh7th/cmp-path', commit = '466b6b8' },
				{ 'hrsh7th/cmp-buffer', commit = 'd66c4c2' },
			},
			commit = '2aa7eee',
		})

		-- snippets
		use({ 'sirver/ultisnips', commit = 'c6ace8c' })
		use({ 'quangnguyen30192/cmp-nvim-ultisnips', commit = 'c6ace8c' })
		-- }}}

		-- {{{ utility plugins
		-- these plugins are all realted to editor configs
		use({
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true },
			commit = '18a07f7',
		})
		use({ 'kdheepak/tabline.nvim', commit = 'b080ed3' })
		use({
			'nvim-telescope/telescope.nvim',
			requires = {
				{ 'nvim-lua/popup.nvim', commit = 'b7404d3' },
				{ 'nvim-lua/plenary.nvim', commit = '9069d14' },
			},
			commit = '6e7ed1b',
		})
		use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons', commit = '0f0f858' })
		use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', commit = '8ec164b' })
		use({ 'windwp/nvim-autopairs', commit = '38d486a' })
		use({ 'terrortylor/nvim-comment', commit = '8619217' })
		use({ 'sbdchd/neoformat', commit = '06920fa' })
		use({ 'phaazon/hop.nvim', commit = 'e2f978b' })
		use({ 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }, commit = '565b94d' })
		use({ 'folke/which-key.nvim', commit = 'a3c19ec' })
		-- }}}

		-- {{{ imporved syntax plugins
		-- these add in a bit more bling and flair to nvim
		use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
		use({ 'glepnir/dashboard-nvim', disable = false, commit = 'a8bce85'})
		use({'norcalli/nvim-colorizer.lua', commit = '36c610a'})
		-- }}}

		-- {{{ themes
		-- popular themes incoming
		use({'joshdick/onedark.vim'})
		use({'sickill/vim-monokai'})
		use({'morhetz/gruvbox'})
		use({'shaunsingh/nord.nvim'})
		use({'sainnhe/gruvbox-material'})

		-- neesh themes
		use({'sainnhe/everforest'})
		use({'relastle/bluewery.vim'})
		use({'haishanh/night-owl.vim'})
		-- }}}
		--
	end,
	-- display packer dialouge in the center in a floating window
	config = {
		display = {
			open_fn = require('packer.util').float,
		},
	},
})

-- # vim foldmethod=marker
