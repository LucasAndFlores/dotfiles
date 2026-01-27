return {
	"olimorris/codecompanion.nvim",
	version = "^18.0.0",
	opts = {
		interactions = {
			chat = {
				adapter = "gemini_cli",
				model = "gemini-pro",
			},
		},
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	keys = {
		{
			"<leader>av",
			"<cmd>CodeCompanionChat<cr>",
			desc = "Code companion chat",
		},
	},
}
