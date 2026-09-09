return {
  -- 1. Download the VS Code theme plugin
  { "mofiqul/vscode.nvim", lazy = false, priority = 1000 },

  -- 2. Configure LazyVim to load it automatically
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
