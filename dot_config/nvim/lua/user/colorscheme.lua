local M = {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
}

function M.config()
	require("catppuccin").setup({
		styles = {
			comments = { "italic" },
			keywords = { "italic" },
		},
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			treesitter = true,
			neotest = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "underline" },
					hints = { "underline" },
					warnings = { "underline" },
					information = { "underline" },
				},
				inlay_hints = {
					background = true,
				},
			},
			telescope = {
				enabled = true,
			},
			which_key = true,
		},
	})
	vim.cmd.colorscheme("catppuccin")
end

return M
