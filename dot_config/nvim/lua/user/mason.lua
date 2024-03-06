local M = {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
}

local mason_defaults = {
  "lua_ls",
  "cssls",
  "html",
  "tsserver",
  "eslint",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "tailwindcss",
  "prettierd",
  "golangci-lint",
  "stylelint",
  "jsonlint",
  "stylua"
}

function M.config()
  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }

  require("mason-tool-installer").setup {
    ensure_installed = mason_defaults,
  }
end

return M
