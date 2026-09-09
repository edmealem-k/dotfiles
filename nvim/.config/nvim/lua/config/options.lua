-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Block bashls warnings while keeping syntax highlighting
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { ".env", ".env.*" },
  callback = function()
    vim.bo.filetype = "dotenv"
    vim.treesitter.start(0, "bash")
  end,
})
