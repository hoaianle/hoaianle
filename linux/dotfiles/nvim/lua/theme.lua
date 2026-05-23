-- Import your custom plugin installer module
local plugins = require('plugins')

-- Use your custom function to install the theme from GitHub
plugins.install('navarasu/onedark.nvim')

-- Configure and Load the Theme
require('onedark').setup {
    style = 'dark',
    transparent = true,
}
require('onedark').load()
