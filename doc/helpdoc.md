# Helpdoc

Welcome to the helpdoc!

This is currently a work in progress, so contributing to the project would be very appreciated!

[Repo](https://github.com/Theory-of-Everything/nii-nvim)




## Welcome to the builtin helpdoc!
This is a In-editor documentation page for nii-nvim. This contains all of the relevant information on the semantics of the config.

**NOTE** This isn't intended to be a guide for nvim itself, as there are many other better places for you to learn nvim anyway.

## Table of Contents
*You can search for sections with nvim's built in search `/` command like /[01]*

### [01] Technical Overview
 - A look at the technical end of the configuration

### [02] Basic Configuration
 - A guide on very basic modification of the configuration

### [03] Contributing to the Project
 - How to contribute to the project's development



# [01] Technical Overview:

### File Tree

Most of magic in this configuration is in the file structure, with an organized file structure,
this configration is easy to understand and implement custom configuration.

The basic file tree follows:
```
.
├── init.lua
├── doc/
│   └── ...
└── lua/
    ├── config/
    │   └── ...
    ├── keymap.lua
    ├── modules/
    │   └── ...
    ├── options.lua
    ├── plug.lua
    ├── scheme.lua
    ├── settings.lua
    └── themes/
        ├── lualine
        │   └── ...
        └── ...
```
 - `init.lua`: 			    The entry point for the config loading, almost all of the modules are `require()`ed here.
 - `lua/`: 		    	    The directory that is sourced by neovim for importing, most of the stuff not present in the init file will be here
 - `lua/config/`: 		    This is the directory contains the config files for the default plugins.
 - `lua/modules/`: 		    This is a WIP, more documentation related to it will come soon once it is finished
 - `lua/themes/`: 		    This contains all of the init files for each theme packaged with nii-nvim. (note these are not color definitions!!)
 - `lua/themes/lualine/`: 	This directory contains all of the themes for lualine and their respective colors. (note these are color definitions.)
 - `lua/keymap.lua`: 		All of the custom keybind definitions.
 - `lua/scheme.lua`: 		The custom theme handler library.
 - `lua/options.lua`: 		All editor options and nvim settings.

# [02] Basic Configuration

### Understanding the init.lua

The init.lua file in the root directory of nii-nvim is going to be the basic entry-point for basic modifications of the default configuration.
Most of the core modules are loaded in the init.lua file, along with setting initialization and theme setting.

In general, the init will usually have all of the relivant `require()`s and reference the `scheme` library for theme setting.
Generally, you probably won't want to be adding code in the init file, as its main purpose is to require any needed modules for startup.
However, quick code testing here might prove useful, as you don't need to keep track of a extra file and require.

### Adding New Plugins
Adding in plugins is a trivial task, however, this base configuration has some basic organization rules that (I would hope) that you would replicate
If you want to add a plugin, these are the basic steps that nii-nvim takes.


Plugins to install with packer are defined in the `lua/plug.lua` file so add your plug to the file. (In this case we will be installing [presence.nvim](https://github.com/andweeb/presence.nvim))
```lua
return require('packer').startup(function(use)
...
    use {'andweeb/presence.nvim'}
...
end)
```

Next you will want to create the configuration file for initialization of the plugin.
 - Plugin config files are made in the `lua/config/` directory.
 - Make a file `lua/config/presence.lua` ndn write all the code for the plugin to startup as desired.
 - Lastly, require the file in the `init.lua`
 ```lua
...
require('config.presence')
...
 ```

### Changing Keybinds

If you want to change or add custom keybinds for nvim, all keybinds are defined in the file `lua/keymap.lua`.

To add a custom keybind, insert the following into `keymap.lua`
(for example we will make a keybind that replaces all `"` with `'`)
```lua
...
-- map() is a wrapper function for setting keybinds with nvim's lua api
-- Arg1 specifies the mode of the keybind (similar to imap, nmap, etc.)
-- Arg2 is the actual keybind
-- Arg3 is the command to execute
-- Arg4 is for aany extra options (noremap and silent are true by default)
-- you can also pass in an empty table or the opt var if you don't want any options.

map("n", "<leader>s", ":%s/"/'/g', opts)
...
```

### Changing the colorscheme

By default, nii-nvim (should) be using the onedark colorscheme for both nvim and lualine, however, if you want to change the theme, you can do that pretty easily
in your `init.lua` there should be a line:
 - `scheme.load_shared_scheme('onedark')`

This is the code that sets the colorscheme configuration for both nvim and lualine.
There are a multitude of popular themes included with nii-nvim, with a complete list being:
**Text Editor:**
 - Ondark
 - Nord
 - Monokai
 - Gruvbox
 - Everforest
 - Bluewery
 - Night Owl

 **Lualine:**
 - Ondark
 - Nord
 - Monokai
 - Gruvbox
 - Everforest
 - Bluewery
 - Night Owl
 - MinimalDark
 - Custom (Boilerplate code)

 To define a separate text editor theme and lualine theme, you can use the following:
 ```lua
scheme.load_scheme('Nord')
scheme.load_lualine_scheme('minimaldark')
 ```
### Adding Colorschemes

nii-nvim handles coloschemes in a different manner than most normal configurations, as loading is handled by the scheme module.
All theme loading files are defined in `lua/themes/`.
To add a theme (whether installed via plugin or custom) crate a file in the themes folder, then add all required code for the theme so load:

**Sample: (Gruvbox)**
```lua
-- File in lua/themes/gruvbox.lua
vim.opt.termguicolors = true
vim.cmd('colorscheme gruvbox')
-- EOF
```

You can also create custom statusline themes by taking the boilerplate code in `lua/themes/lualine/custom.lua` and create your own statusline theme.
**NOTE:** The scheme loading functions directly depend on the filename, so when specifying a theme, make sure that you use the filename when you use scheme functions.

# [03] Contributing
nii-nvim is currently in pre-release, so any contributions are highly appreciated.
If you want to start contributing, make sure to refer to the following in the repository if you want a starting point.

 - The CONTRIBUTING.md 
 - Any current issues and pull requests
 - Planned Features

You can also help in these ways
 - Bug Hunting/Fixing
 - Documentation checking/writing
 - Promotion of the project (Yes, this is contributing in my opinion)

Any contributions to these parts of the project are really appreciated.

**NOTE ON FEATURE REQUESTS:** Currently I the maintainer (Theory_of_Everything) have no interest in feature request at the moment of this commit,
and instead want to focus on the project's current roadmap. However, if you feel a feature request is in the scope of the project's goals, feel free to open an issue.
