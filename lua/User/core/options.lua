vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.swapfile = false
vim.opt.compatible = false
vim.opt.mouse = ''
vim.opt.incsearch = true
vim.g.nobackup = true
vim.opt.autoindent = true
vim.g.shiftwidth = '4'
vim.g.tabspace = '4'
vim.opt.clipboard = 'unnamedplus'
vim.opt.termguicolors = true
vim.g.t_Co = '256'
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true
vim.opt.cursorline = require('User.config.config').cursorline
vim.nowrap = true
