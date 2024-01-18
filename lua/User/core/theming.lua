local defaultTheme = 'kanagawa'
local theme = require('last-color').recall() or defaultTheme
vim.cmd(('colorscheme %s'):format(theme))
