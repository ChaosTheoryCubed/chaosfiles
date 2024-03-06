local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

local default_treesitter = {
  "lua",
  "markdown",
  "markdown_inline",
  "bash",
  "python",
  "javascript",
  "typescript",
  "tsx",
  "json",
  "toml",
  "yaml",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = default_treesitter,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  }
end

return M
