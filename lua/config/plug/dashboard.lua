local g = vim.g

g.dashboard_default_executive = 'telescope'
g.dashboard_disable_statusline = 0

g.dashboard_custom_header = {
'┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑',
'│ ⠀⠀⣀⠔⠉⠀⠀⠀⠀⠀⣀⡀⠀⢀⠀⠀⠀⠁⠀⠀⠀⠀⢀⣀⣀⣰⣁⠴⣧⠴⠷⠖⠒⠒⣲⠞ │',
'│ ⣠⠞⡁⠀⠀⠀⠀⢀⡤⠊⠀⠹⡆⠈⢦⠀⠀⢀⣤⣤⣬⣯⣥⣄⣠⡗⠁⠀⢁⠀⠀⠀⢀⠞⠁⠀ │',
'│ ⢁⠀⡄⠀⠀⣠⡔⠡⣤⠄⠂⠂⠉⠀⣈⣃⣀⡠⡦⠤⠦⠀⢳⡀⡹⠋⢉⡽⠋⠀⢀⡔⠁⠀⡀⠐ │',
'│ ⣤⠾⠗⠒⢉⠀⢀⣴⠉⠀⠀⠀⠀⠈⢿⡉⠉⠃⢸⠘⠋⠎⠀⣹⠃⡴⠋⠀⢀⡴⠋⠀⠐⠂⠀⠠ │',
'│ ⣷⡶⢀⣶⣧⣠⣾⢿⣧⡀⠀⠀⠀⠠⣌⣷⡀⠀⠀⢇⠌⠀⡰⣡⠞⣷⠀⡠⠊⠀⠀⠀⠀⠀⡀⠀ │',
'│ ⣿⣶⣿⣿⣿⣿⠟⢇⠻⣷⡴⢦⣀⠀⠀⢻⢿⡦⠀⠎⡀⣠⠞⠁⠀⠘⠊⠀⢄⠀⠀⢀⣠⠞⢀⠀ │',
'│ ⣿⣿⡟⣿⣿⢫⣴⠁⠀⢸⣿⡄⡀⢹⠆⣠⡎⢹⣞⢈⡿⠁⠀⠀⠀⢀⣠⡠⠴⠿⢟⡿⠿⢶⡿⢤ │',
'│ ⣮⡙⣿⡿⢡⣏⠸⠀⠀⡼⠈⢿⡖⢋⠞⠁⢰⠎⠙⠋⣠⡀⠀⠀⢀⡏⢁⣤⠄⢠⠞⠻⣶⣦⣵⣼ │',
'│ ⣿⣿⣿⣧⡀⠉⠁⡐⣾⢇⡰⣋⢿⣇⠀⠀⠀⡀⠀⡀⠁⣸⣶⣾⠋⢸⣠⢏⡴⠃⠀⠐⠛⠻⢯⣉ │',
'│ ⣾⣿⠈⣿⣿⡳⣶⣿⡧⠋⠰⠃⠀⢻⣧⠀⠈⣉⡾⠀⠶⢚⣿⠁⠰⣿⣧⠜⠁⢠⣤⣀⣶⣂⣈⠻ │',
'│ ⢯⣘⣷⣿⣿⣿⣿⡛⢿⣄⠠⠒⢈⡠⠻⣷⣡⠏⠀⠀⣸⡟⢻⣀⡌⣸⡿⣦⠐⠻⡿⠟⠉⠁⠀⠠ │',
'│ ⠤⠽⢿⣿⣿⣿⡟⣿⢚⣿⣦⠔⠏⠐⠀⠽⣿⡀⠀⠀⠉⠉⠙⠃⢰⡿⠀⠈⢳⣄⠀⠀⠀⢀⠀⠀ │',
'│ ⣀⣀⣂⣈⣯⣈⣛⣦⣀⣙⢿⣧⣄⠊⣲⣁⣘⣷⣀⢀⠤⢁⡴⠃⣾⠉⠀⠀⠀⠈⠢⡀⠀⢀⡄⠀ │',
'│ ⣻⣟⡛⠛⢛⠻⣛⠛⠛⠋⠀⠻⣧⡐⠛⠛⠛⠛⢻⠏⢠⠊⠀⢸⡏⠀⠀⢨⠧⡀⠀⠹⣎⠀⢸⠆ │',
'│ ⣿⣿⣧⣶⢿⡷⠋⢢⡄⠀⠀⠀⠹⣷⡄⢀⡴⢃⣫⡨⠚⣿⠀⣾⣀⡀⠀⠿⠀⠛⢦⡄⠈⠳⡀⠀ │',
'│ ⣿⣻⣿⣷⠈⣿⠆⢀⠘⣴⣿⣦⡀⠙⣿⣾⣿⣟⣸⢉⣥⡿⢤⣽⠉⠉⣉⠉⠛⠖⠦⠹⣄⢠⣽⣆ │',
'┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙',
}

g.dashboard_custom_section = {
	a = { description = { '  Find File                        ' }, command = 'Telescope find_files' },
	b = { description = { '  Recents                          ' }, command = 'Telescope oldfiles' },
	c = { description = { '  Find Word                        ' }, command = 'Telescope live_grep' },
	d = { description = { '  New File                         ' }, command = 'DashboardNewFile' },
	e = { description = { '  Bookmarks                        ' }, command = 'Telescope marks' },
	f = { description = { '  Open Help Doc                    ' }, command = 'view ~/.config/nvim/doc/helpdoc.md' },
}

g.dashboard_custom_footer = {
	'[ nii-nvim ]',
}
