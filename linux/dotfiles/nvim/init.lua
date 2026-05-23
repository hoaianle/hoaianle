vim.wo.number = true
-- vim.opt.clipboard = 'unnamedplus'

vim.opt.termguicolors = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

require('theme')
require('fzf')

-- Ctrl + P
vim.keymap.set('n', '<C-p>', ':Files<CR>', { silent = true })
