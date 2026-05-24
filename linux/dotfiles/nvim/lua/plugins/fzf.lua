return {
  { "junegunn/fzf" },
  {
    "junegunn/fzf.vim",
    config = function()
      vim.g.fzf_action = {
        ["ctrl-t"] = "tab split",
        ["ctrl-v"] = "vsplit",
        ["ctrl-x"] = "split",
      }
    end,
  },
}