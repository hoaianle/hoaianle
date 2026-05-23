return {
  "navarasu/onedark.nvim",
  lazy = false,    -- Load immediately at launch
  priority = 1000, -- Highest priority to prevent flashing
  config = function()
    require('onedark').setup {
      style = 'dark',
      transparent = true,
    }
    require('onedark').load()
  end,
}