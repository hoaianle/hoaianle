-- Native Plugin Bootstrapper for the theme
local pack_dir = vim.fn.stdpath("data") .. "/site/pack/plugins/start"
local theme_path = pack_dir .. "/onedark.nvim"

-- If onedark folder doesn't exist, clone it from GitHub automatically
if vim.fn.empty(vim.fn.glob(theme_path)) > 0 then
  print("Downloading onedark.nvim...")
  vim.cmd('redraw') 

  vim.fn.system({
    "git",
    "clone",
    "--depth", "1",
    "https://github.com/navarasu/onedark.nvim.git",
    theme_path
  })
  
  vim.cmd([[packadd! onedark.nvim]])
  
  -- Clear the screen entirely
  vim.cmd('redraw')
  vim.api.nvim_command('echo ""')
end

-- Configure and Load the Theme
require('onedark').setup {
    style = 'dark',
    transparent = true,
}
require('onedark').load()
