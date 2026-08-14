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

        local function try_lint()
            local bufname = vim.api.nvim_buf_get_name(0)
            if bufname:match("/vendor/") then
                return
            end
            lint.try_lint()
        end

        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            callback = try_lint,
        })
    end
}
