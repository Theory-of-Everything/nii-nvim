require('packer').startup({
	function(use)
		-- packer self management
		use('wbthomason/packer.nvim')

		-- {{{ lsp/autocompletion/snippets
		-- lsp plugins
		use('neovim/nvim-lspconfig')
		use('onsails/lspkind-nvim')

        -- java lsp
        use('mfussenegger/nvim-jdtls')

		-- autocompletion
		use({
			'hrsh7th/nvim-cmp',
			requires = {
				{ 'hrsh7th/cmp-nvim-lsp' },
				{ 'hrsh7th/cmp-path' },
				{ 'hrsh7th/cmp-buffer' },
			},
		})

        use({ "petertriho/cmp-git", requires = "nvim-lua/plenary.nvim" })

		-- snippets
		use('sirver/ultisnips')
		use('quangnguyen30192/cmp-nvim-ultisnips')
		-- }}}

		-- {{{ utility plugins
		-- these plugins are all realted to editor configs
		use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } })
		use('kdheepak/tabline.nvim')
		use({ 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } })
		use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })
		use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
		use('windwp/nvim-autopairs')
		use('terrortylor/nvim-comment')
		use('sbdchd/neoformat')
		use('phaazon/hop.nvim')
		use({ 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } })
        use('liuchengxu/vim-which-key')
        use('jghauser/mkdir.nvim')
        use({ 'ellisonleao/glow.nvim', branch = 'main'} )
		-- }}}

        -- {{{ improved syntax plugins
		-- these add in a bit more bling and flair to nvim
		use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
		use({ 'glepnir/dashboard-nvim', disable = false })
        use({'rrethy/vim-hexokinase', run = 'make hexokinase'})
		use('norcalli/nvim-colorizer.lua')
		-- }}}

		-- {{{ themes
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
		-- }}}

        -- {{{
        use('andweeb/presence.nvim')
        -- }}}
	end,
	-- display packer dialouge in the center in a floating window
	config = {
		display = {
			open_fn = require('packer.util').float,
		},
	},
})

-- # vim foldmethod=marker
