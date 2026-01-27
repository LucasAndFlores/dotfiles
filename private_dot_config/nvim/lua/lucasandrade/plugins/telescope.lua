return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
	config = function()
		require("telescope").load_extension("ui-select")
	end,
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
		},
		{
			"<leader>di",
			function()
				require("telescope.builtin").diagnostics({ severity = vim.diagnostic.severity.ERROR })
			end,
		},
		{
			"<leader>fB",
			function()
				require("telescope.builtin").buffers()
			end,
		},
	},
}
