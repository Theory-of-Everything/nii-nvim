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

### Default Keybinds

# Nvimtree
*These keybinds only work while focused on the tree window*

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


# Telescope-nvim

`<leader>f`: 		Open telescope in find_files mode	| Normal Mode ONLY
`<leader>F`: 		Open telescope in file_browser mode	| Normal Mode ONLY

`<leader>g`: 		Open telescope in git_commits mode	| Normal Mode ONLY
`<leader>G`:		Open telescope in git_branches mode	| Normal Mode ONLY

# Dashbaord

`<leader>~`:		Open Dashboard

# Editor Binds

### Text

`<C-c>`:		Toggle line comment (multiple lines can be commented out in visual mode)

### Buffer Management

`<leader>h`:		Switch to the first buffer in the bufferlist	| Normal Mode ONLY
`<leader>j`:		Cycle to the next buffer in the bufferlist	| Normal Mode ONLY	
`<leader>k`:		Cycle to the previous buffer in the bufferlist	| Normal Mode ONLY
`<leader>l`:		Switch to the last buffer in the bufferlist	| Normal Mode ONLY
`<leader>d`:		Delete current buffer
