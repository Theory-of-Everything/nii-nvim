# Keybinds

Welcome to the nii-nvim keybinds doc! Here you will find references to all of the non-nvim native keybinds

### Understanding doc syntax

#### Normal Keybind Syntax
`f` 		Defines a keybind sequence of f
`F` 		Defines a keybind sequence of Shift-f
`<C-f>`		Defines a keybind seqence of Ctrl-f
`<C-F>` 	Defines a keybind squence of Ctrl-Shift-f

#### Leader Keybind Syntax
`<leader>` 		Indicates the leader key (Default: Space)
`<leader>f` 	Indicates the leader key plus f (Think Space-f)
`<leader>f` 	Indicates the leader key plus capital F (Think Space-Shift-f)

#### Special Key Names
`<CR>` 		Is equivalent to Enter/Return
`<BS>` 		Is equivalent to Backspace
`<Mouse1>`	Left Mouse Button
`<Mouse2>`	Right Mouse Button
`<VimKeys>` 	Is equivalent to the h,j,k,l navigation keys (also equivalent to the arrow keys)

# Keybinds

### General

`<C-c>`:			Toggle line comment 
`<C-n>`:			Toggle relative and absolute line numbers

`WW`:				Write File

`<leader>nf`:		Format buffer with neoformat					| Normal Mode ONLY
`<leader>ya`:		Yank buffer to system clipboard
`<leader>yl`:		Yank line to system clipboard

`<leader>~`:		Open Dashboard

### Autocompletion

`<Tab>`:				Select next autocompletion item
`<S-Tab>`:				Select previous autocompletion item
`<C-f>`:				Scroll up autocompletion docs
`<C-d>`:				Scroll down autocompletion docs
`<C-e>`:				Close autocompletion menu
`<C-Space>`:			Select complete autocompletion selction

### Text Navigation

`<leader>aH`:		hop.nvim hop by word        					| Normal Mode ONLY
`<leader>aH`:		hop.nvim hop by line        					| Normal Mode ONLY


### Buffer/Window Management


`<leader>l`:		Focus window focus to right 					| Normal Mode ONLY
`<leader>k`:		Focus window focus to top       				| Normal Mode ONLY
`<leader>j`:		Focus window focus to bottom   	     			| Normal Mode ONLY
`<leader>h`:		Focus window focus to left      				| Normal Mode ONLY

`<leader>bh`:		Switch to the first buffer in the bufferlist	| Normal Mode ONLY
`<leader>bj`:		Cycle to the next buffer in the bufferlist		| Normal Mode ONLY	
`<leader>bk`:		Cycle to the previous buffer in the bufferlist	| Normal Mode ONLY
`<leader>bl`:		Switch to the last buffer in the bufferlist		| Normal Mode ONLY
`<leader>bd`:		Delete current buffer

### Terminal

`<leader><CR>`:		Spawn terminal session in vertical split		| Normal Mode ONLY
`<leader>\`:		Spawn terminal session in horizontal split 		| Normal Mode ONLY


## Plugin Binds

### Nvimtree
*all nvimtree keybinds are the default keybinds*

`<VimKeys>`: 		Navigate Through the tree
`<CR>`:			Open the selected directory in the ui or will follow a symlink to its location
`<C-]>`:		Set tree root working directory to selected directory
`a`:			Create file (append a / to make a directory)
`x`:			Cut file/directory to tree clipbaord
`c`:			Copy file/directory to tree clipbaord
`y`:			Copy file name to system clipboard
`Y`:			Copy relative path to system clipboard
`gy`:			Copy absolute path to system clipboard
`P`:			Paste from tree clipboard (Cut files have precidence over Copied files)
`d`:			Delete file/directory (will prompt for confirmation)
`]c`:			Next git item
`[c`:			Previous git item
`-`:			Navigate to the parent direcory of the current file/directory
`s`:			Open file with system default application and directory with system file manager

`<C-v>`:		Open file in a vertical split
`<C-x>`:		Open file in a horizontal split
`<C-t>`:		Open file in new buffer
`<Tab>`:		Preview file in a new buffer (keeps cursor in tree)
`I`:			Toggle visibility of configured hidden files/directories
`H`:			Toggle visibility of hidden files/directories (dotfiles)
`R`:			Refresh Tree

`<Mouse1>`:		Double clicking acts like `<CR>`
`<Mouse2>`:		Double clicking acts like `<C-]>`

### Gitsigns

`]c`:				Priview next hunk
`[c`:				Priview previous hunk

`<leader>gs`:		stage hunk
`<leader>gu`:		undo stage hunk
`<leader>gr`:		reset hunk
`<leader>gR`:		reset buffer
`<leader>gp`:		preview hunk
`<leader>gb`:		blame line
`<leader>gS`:		stage buffer
`<leader>gU`:		reset buffer_index

`<leader>gs`:		stage hunk by current selection
`<leader>gr`:		reset hunk by current selection

### Telescope-nvim

`<leader>ff`: 		Open telescope in find_files mode
`<leader>fw`: 		Open telescope in find_word mode
`<leader>fF`: 		Open telescope in file_browser mode

`<leader>fg`: 		Open telescope in git_commits mode
`<leader>fG`:		Open telescope in git_branches mode

### Hop.nvim

see :h hop for more info

`<leader>ah`:		Quickhop in word mode
`<leader>ak`:		Quickhop in before cursor
`<leader>aj`:		Quickhop in after cursor
`<leader>al`:		Quickhop in word mode
`<leader>ac`:		Quickhop in 1 character mode
`<leader>aC`:		Quickhop in 2 character mode
`<leader>ag`:		Quickhop in pattern mode
`<leader>an`:		Quickhop in line start
`<leader>af`:		Quickhop in current line
