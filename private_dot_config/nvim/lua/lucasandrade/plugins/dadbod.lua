return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  },
    config = function()
        local cmp = require "cmp"
        -- Setup up vim-dadbod
        cmp.setup.filetype({ "sql" }, {
            sources = {
                { name = "vim-dadbod-completion" },
                { name = "buffer" },
            },
        })

        vim.api.nvim_create_autocmd('FileType', {
          pattern = { 'dbout' },
          callback = function()
            vim.opt.foldenable = false
          end,
        })

        vim.g.db_ui_use_nerd_fonts = 1
    end
}
