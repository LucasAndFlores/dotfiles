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
		{
			"<leader>fs",
			function()
				-- Get the visually selected text
				local saved_reg = vim.fn.getreg("v")
				vim.cmd('noau normal! "vy"')
				local selection = vim.fn.getreg("v")
				vim.fn.setreg("v", saved_reg)

				-- Strip newlines in case of multi-line selection
				selection = selection:gsub("\n", "")

				require("telescope.builtin").grep_string({ search = selection })
			end,
			mode = "v",
		},
	},
}
