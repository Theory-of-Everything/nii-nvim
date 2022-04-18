local wk = require('which-key')

wk.setup({
	plugins = {
		spelling = {
			enabled = true,
			suggestions = 40,
		},
	},
	key_labels = {
		['<space>'] = 'SPC',
		['<CR>'] = 'ENTR',
		['<tab>'] = 'TAB',
		['<bs>'] = 'BKSPC',
	},
	layout = {
		align = 'center',
	},
})

local keymap = {
	a = {
		name = 'hop.nvim',
		h = { 'hop by word' },
		k = { 'hop by word (before cursor)' },
		j = { 'hop by word (after cursor)' },
		l = { 'hop by word (all windows)' },
		f = { 'hop by word (current line)' },
		c = { 'hop by given char' },
		C = { 'hop by 2 given chars' },
		g = { 'hop by pattern' },
		n = { 'hop by line start' },
	},

	b = {
		name = 'buffers',
		h = { 'focus first buffer in buflist' },
		j = { 'focus previous buffer in buflist' },
		k = { 'focus next buffer in buflist' },
		l = { 'focus last buffer in buflist' },
	},

	f = {
		name = 'telescope',
		f = { 'fuzzy file finder' },
		w = { 'fuzzy word search' },
		g = { 'fizzy git commit finder'},
		G = { 'fizzy git branch finder'},
	},

	g = {
		name = 'gitsigns',
		s = { 'stage hunk' },
		u = { 'undo stage hunk' },
		r = { 'reset hunk' },
		R = { 'reset buffer' },
		p = { 'preview hunk' },
		b = { 'blame line' },
		S = { 'stage buffer' },
		U = { 'reset buffer index' },
	},

	n = {
		f = { 'format buffer' },
	},

	h = { 'Win focus left' },
	j = { 'Win focus up' },
	k = { 'Win focus down' },
	l = { 'Win focus right' },
	s = { 'Buffer picker' },

	y = {
		name = 'yank',
		a = { 'yank entire buffer to system clipboard' },
		l = { 'yank line to system clipboard' },
	},
	['<cr>'] = { 'Term vsplit' },
	['\\'] = { 'Term split' },
}

wk.register(keymap, {
	prefix = '<leader>',
})
