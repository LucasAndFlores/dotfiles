return {
	"olimorris/codecompanion.nvim",
	version = "^18.0.0",
	opts = {
		interactions = {
			chat = {
				adapter = "opencode",
				model = "anthropic/claude-sonet-4.6",
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
