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

-- Split navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left split' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to lower split' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to upper split' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right split' })

-- Split resize
vim.keymap.set('n', '<M-h>', '<C-w><', { desc = 'Shrink split width' })
vim.keymap.set('n', '<M-l>', '<C-w>>', { desc = 'Expand split width' })
vim.keymap.set('n', '<M-k>', '<C-w>+', { desc = 'Expand split height' })
vim.keymap.set('n', '<M-j>', '<C-w>-', { desc = 'Shrink split height' })
