return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        
        -- REQUIRED
        harpoon:setup({})
        -- REQUIRED
        -- gambiarra pra excluir
        local function toggle_telescope(harpoon_files)
            local finder = function()
                local paths = {}
                for _, item in ipairs(harpoon_files.items) do
                    table.insert(paths, item.value)
                end
        
                return require("telescope.finders").new_table({
                    results = paths,
                })
            end
        
            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = finder(),
                previewer = require("telescope.config").values.file_previewer({}),
                sorter = require("telescope.config").values.generic_sorter({}),
                attach_mappings = function(prompt_bufnr, map)
                    map("i", "<C-d>", function()
                        local state = require("telescope.actions.state")
                        local selected_entry = state.get_selected_entry()
                        local current_picker = state.get_current_picker(prompt_bufnr)
        
                        table.remove(harpoon_files.items, selected_entry.index)
                        current_picker:refresh(finder())
                    end)
                    return true
                end,
            }):find()
        end
        
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        
        vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
            { desc = "Open harpoon window" })
        
        vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

    end
}
