return {
    'mfussenegger/nvim-lint',
    event = { "BufEnter", "BufWritePost", "InsertLeave" },
    config = function()
        local lint = require("lint")

        lint.linters_by_ft = {
            javascript = { "eslint_d" },
            typescript = { "eslint_d" },
            go = { "golangcilint" }
        }

        lint.try_lint()
    end
}
