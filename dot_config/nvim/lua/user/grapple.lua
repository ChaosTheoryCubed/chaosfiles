local M = {
	"cbochs/grapple.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
	},
}

function M.config()
	local keymap = vim.keymap.set
	local opts = { noremap = true, silent = true }

	keymap("n", "<S-m>", "<cmd>lua require('grapple').toggle()<cr>", opts)
	keymap("n", "<C-m>", "<cmd>lua require('grapple').toggle_tags()<cr>", opts)
	keymap("n", "<TAB>", "<cmd>lua require('grapple').cycle_forward()<cr>", opts)
	keymap("n", "<S-TAB>", "<cmd>lua require('grapple').cycle_backward()<cr>", opts)

	require("lualine").setup({
		sections = {
			lualine_b = {
				{
					require("grapple").statusline,
					cond = require("grapple").exists,
				},
			},
		},
	})
end

return M
