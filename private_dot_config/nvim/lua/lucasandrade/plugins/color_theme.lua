return {
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    dependencies = { "nvim-tree/nvim-web-devicons", opts = {} },
    config = function()
        vim.o.background = "dark"
        vim.cmd.colorscheme('gruvbox')
    end
}
