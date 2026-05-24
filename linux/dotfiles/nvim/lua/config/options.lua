vim.wo.number = true
-- vim.opt.clipboard = 'unnamedplus'

vim.opt.termguicolors = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Color theme integration for FZF and Batcat
vim.env.BAT_THEME = "base16"

-- Tell fzf.vim to use batcat for rendering previews
vim.g.fzf_layout = { window = { width = 0.9, height = 0.6 } }
vim.env.FZF_PREVIEW_COMMAND = 'batcat --style=plain --color=always --line-range :500 {}'
