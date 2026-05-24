vim.g.mapleader = " "

-- Global search using fzf
vim.keymap.set('n', '<C-p>', ':Files<CR>', { silent = true })

-- Search open buffers using fzf
vim.keymap.set('n', '<leader>f', ':Buffers<CR>', { silent = true })
