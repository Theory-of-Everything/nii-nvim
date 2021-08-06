return require('packer').startup(function(use)
	-- packer self manage
	use 'wbthomason/packer.nvim'

	-- lsp plugin with install plug
	use 'neovim/nvim-lspconfig'
	use 'kabouzeid/nvim-lspinstall'
	-- completion plugin
	use 'nvim-lua/completion-nvim'

	-- statusline (lualine)
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

	-- bufferline (think tabs)
	use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}

	-- nvim-compe
	use 'hrsh7th/nvim-compe'

	-- autopairs plugin
	use 'windwp/nvim-autopairs'

	-- telescope plugin
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

	-- fzf telescope
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make'
	}

	-- nvim-treesitter
    	use {
        	'nvim-treesitter/nvim-treesitter',
        	run = ':TSUpdate'
    	}

	-- dashboard
	use 'glepnir/dashboard-nvim'

	use {
		'kyazdani42/nvim-tree.lua',
    		requires = 'kyazdani42/nvim-web-devicons'
	}

	-- nvim-comment
	use 'terrortylor/nvim-comment'

	-- TODO: Add support for galaxyline
	-- statusline (galaxyline)
	--use {
	--	'glepnir/galaxyline.nvim',
	--	branch = 'main',
	--	config = function() require('theme/statusline') end,
	--	requires = {'kyazdani42/nvim-web-devicons', opt = true}
	--}
end)
