-- Set line numbers
vim.opt.number = true

-- Set indentation behavior
vim.opt.autoindent = true
vim.opt.tabstop = 8
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.softtabstop = 0

-- Enable mouse support
vim.opt.mouse = "a"

-- Visualize certain characters
vim.opt.list = true
vim.opt.listchars = { tab = "▸·" }

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>nh", ":noh<CR>")
