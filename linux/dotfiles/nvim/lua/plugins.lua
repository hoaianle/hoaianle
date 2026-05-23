local M = {}

-- Custom function to automatically download and load a plugin from GitHub
-- @param repo string: The GitHub repository (e.g., 'navarasu/onedark.nvim')
function M.install(repo)
  -- Extract the plugin name from the repo string (e.g., 'onedark.nvim')
  local plugin_name = repo:match(".*/(.*)")
  
  local pack_dir = vim.fn.stdpath("data") .. "/site/pack/plugins/start"
  local plugin_path = pack_dir .. "/" .. plugin_name

  -- If the plugin folder doesn't exist, clone it from GitHub automatically
  if vim.fn.empty(vim.fn.glob(plugin_path)) > 0 then
    print("Downloading " .. plugin_name .. "...")
    vim.cmd('redraw') 

    vim.fn.system({
      "git",
      "clone",
      "--depth", "1",
      "https://github.com/" .. repo .. ".git",
      plugin_path
    })
    
    -- Dynamically add the new package to Neovim's runtime paths
    vim.cmd("packadd! " .. plugin_name)
    
    -- 1. Show the success message clearly
    vim.cmd('redraw')
    print("Successfully installed " .. plugin_name .. "!")
    vim.cmd('redraw') -- Force the success text to render immediately
    
    vim.loop.sleep(500)
    
    vim.api.nvim_command('echo ""')
  end
end

return M
