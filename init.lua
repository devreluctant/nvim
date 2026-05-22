vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('theme')
require('completion')
require('rust-setup')
require('python-setup')
require('telescope-setup')
require('avante-setup')  -- Add this

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.laststatus = 3  -- Required by avante
