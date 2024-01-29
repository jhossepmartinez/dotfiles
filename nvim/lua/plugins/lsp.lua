-- Mason lspconfig names
local lsp_servers = {
    "lua_ls",
    "vimls",

    "pyright",
    "clangd",
    "rust_analyzer",

    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "emmet_language_server"
}

return {
    {
        "williamboman/mason.nvim"
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = lsp_servers
            })
            -- Automatic setup for lsp servers
            require("mason-lspconfig").setup_handlers({
                -- Called for each installed server
                function(server_name)
                    local capabilities = require("cmp_nvim_lsp").default_capabilities()
                    require("lspconfig")[server_name].setup({ capabilities = capabilities })
                end,
                -- Specific configuration for each server
                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup({
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" }
                                }
                            }
                        }
                    })
                end
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        -- Diable inline diagnostics
        config = function()
            vim.diagnostic.config({
                virtual_text = true
            })
        end
    }
}
