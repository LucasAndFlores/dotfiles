return {
    "tpope/vim-dadbod",
    dependencies = {
        "kristijanhusak/vim-dadbod-completion",
        "kristijanhusak/vim-dadbod-ui",
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
    end
}
