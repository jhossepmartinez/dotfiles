return {
    {
        "onsails/lspkind.nvim"
    },
	-- Lsp Zero
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional

			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			-- { "hrsh7th/nvim-cmp" }, -- Required
            { "yioneko/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" }, -- Optional
			{ "hrsh7th/cmp-path" }, -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" }, -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional

			-- Formatters
			{ "jose-elias-alvarez/null-ls.nvim" },
			{ "jay-babu/mason-null-ls.nvim" },
		},
		config = function()
            -- local breadcrumb = require("breadcrumb")

			local lsp = require("lsp-zero").preset({
				name = "minimal",
				set_lsp_keymaps = false,
				manage_nvim_cmp = true,
				suggest_lsp_servers = false,
			})

            lsp.on_attach(function(client, bufnr)
                -- if client.server_capabilities.documentSymbolProvider then
                --     breadcrumb.on_attach(client, bufnr)
                -- end
                lsp.default_keymaps({
                    buffer = bufnr,
                    preserver_mappings = false
                })
            end)

            lsp.ensure_installed({
                "lua_ls",
                "vimls",

                -- Lsp
                "pyright",
                -- "rust_analyzer",
                "clangd",

                -- Web Development Lsp
                "html",
                -- "phpactor",
                "tsserver",
                "tailwindcss",
            })

            -- lsp.skip_server_setup("tailwindcss")

            lsp.configure("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })

            lsp.setup()

            local cmp = require('cmp')
            local lspkind = require('lspkind')

            cmp.setup {
                formatting = {
                    format = lspkind.cmp_format({
                        -- mode = 'symbol', -- show only symbol annotations
                        maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                    })
                }
            }
            -- cmp.setup({
            -- formatting = {
            -- format = lspkind.cmp_format(),
            -- },
            -- completion = {
            -- keyword_length = 3,
            -- },
            -- performance = {
            -- trigger_debounce_time = 500,
            -- throttle = 550,
            -- fetching_timeout = 80,
            -- },
            -- })
        end,
    },
}
