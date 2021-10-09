local g = vim.g

-- snippet tab into regions
g.UltiSnipsJumpForwardTrigger = '<Tab>'
g.UltiSnipsJumpBackwardTrigger = '<S-Tab>'

-- edit snippets file in vertical window
g.UltiSnipsEditSplit = 'vertical'

g.UltiSnipsSnippetDirectories = {
	"snips"
}
