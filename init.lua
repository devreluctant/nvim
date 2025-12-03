vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Load theme
require('theme')

-- Load completion setup first
require('completion')

-- Load rustaceanvim configuration
require('rust-setup')

-- Load telescope configuration
require('telescope-setup')

-- Basic Neovim settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
