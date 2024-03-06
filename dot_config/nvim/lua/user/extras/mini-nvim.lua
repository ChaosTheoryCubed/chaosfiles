local M = {
  "echasnovski/mini.nvim",
  lazy = false,
  version = false,
}

function M.config()
  -- Mini Files
  require('mini.files').setup()
  vim.keymap.set("n", "-", "<cmd>lua require('mini.files').open()<cr>", { desc="Open Parent Directory" })
end

return M
