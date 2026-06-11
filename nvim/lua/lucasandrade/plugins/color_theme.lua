--return {
--	"ellisonleao/gruvbox.nvim",
--	lazy = false,
--	priority = 1000,
--	dependencies = { "nvim-tree/nvim-web-devicons", opts = {} },
--	config = function()
--		vim.o.background = "dark"
--		vim.cmd.colorscheme("gruvbox")
--	end,
--}

return {
	"sainnhe/gruvbox-material",
	dependencies = { "nvim-tree/nvim-web-devicons", opts = {} },
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.gruvbox_material_enable_italic = true
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
