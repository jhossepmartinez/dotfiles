return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            -- indent = { char = "│" },
            indent = { char = "▏" },
            scope = {
                enabled = false
            },
            exclude = {
                filetypes = {
                    -- "markdown"
                }
            }
        }
    },
    {
        "kevinhwang91/nvim-ufo",
        dependencies = {
            "kevinhwang91/promise-async",
            "luukvbaal/statuscol.nvim"
        },
        config = function()
            require("ufo").setup({
                provider_selector = function(bufnr, filetype, buftype)
                    return { "lsp", "indent" }
                end
            })

            vim.o.foldcolumn = '1' -- '0' is not bad
            vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
            vim.o.foldlevelstart = 99
            vim.o.foldenable = true

            -- Remove depth number indicator
            local builtin = require("statuscol.builtin")
            require("statuscol").setup(
            {
                relculright = true,
                segments = {
                    {text = { "%s", "" }, click = "v:lua.ScSa" },
                    {text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
                    {text = { builtin.foldfunc, " " }, click = "v:lua.ScFa" },
                }
            }
            )
        end,
    },
    {
        "kdheepak/lazygit.nvim",
        keys = {
            { "<Leader>gg", "<cmd>LazyGit<CR>" }
        }
    }
}
