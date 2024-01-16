local defaultTheme = require('User.config.config').defaultTheme
local theme = require('last-color').recall() or defaultTheme
vim.cmd(('colorscheme %s'):format(theme))
