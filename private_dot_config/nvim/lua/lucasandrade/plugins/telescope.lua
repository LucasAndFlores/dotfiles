return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>di', builtin.diagnostics, {})
        vim.keymap.set('n', '<leader>fB', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('v', '<C-f>', function()
            builtin.grep_string({ search = vim.fn.expand('<cword>') })
        end)
    end
}
