# Helpdoc

Welcome to the helpdoc!

This is currently a work in progress, so contributing to the project would be very appreciated!

[Repo](https://github.com/Theory-of-Everything/nii-nvim)

## Welcome to the builtin helpdoc!
This is a In-editor doumentation page for nii-nvim. This contains all of the relivant information on the semantics of the config.

**NOTE** This isn't intended to be a guide for nvim itself, as there are many other better places for you to learn nvim anyway.


## Table of Contents

### Technical Overview
 - A look at the technical end of the configration

### Basic Configuration
 - A guide on very basic modification of the configuration

### Advanced Configuration
 - A more advanced look at configuring nii-nvim

### Contributing to the Project
 - How to contribute to the project's development



# Technical Overview:

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
 - `init.lua`: 			The entry point for the config loading, almost all of the modules are `require()`ed here.
 - `lua/`: 			The directory that is sourced by neovim for importing, most of the stuff not present in the init file will be here
 - `lua/config/`: 		This is the directory contains the config files for the default plugins.
 - `lua/modules/`: 		This is a WIP, more documentation related to it will come soon once it is finished
 - `lua/themes/`: 		This contains all of the init files for each theme packaged with nii-nvim. (note these are not color definitions!!)
 - `lua/themes/lualine/`: 	This directory contains all of the themes for lualine and their respective colors. (note these are color definitions.)
 - `lua/keymap.lua`: 		All of the custom keybind definitions.
 - `lua/scheme.lua`: 		The custom theme handler library.
 - `lua/options.lua`: 		All editor optiuons and nvim settings.
