local plugins = require('plugins')
plugins.install('junegunn/fzf')
plugins.install('junegunn/fzf.vim')
vim.env.BAT_THEME = 'base16'
-- Ctrl + P
vim.keymap.set('n', '<C-p>', ':Files<CR>', { silent = true })
