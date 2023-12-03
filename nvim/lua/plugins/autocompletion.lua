return {
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "onsails/lspkind.nvim" },
    -- Snippets
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    { "saadparwaiz1/cmp_luasnip" },
    -- {
    --     "hrsh7th/nvim-cmp",
    --     -- "yioneko/nvim-cmp",
    --     config = function()
    --         require("luasnip.loaders.from_vscode").lazy_load()
    --         -- local lspkind = require("lspkind")
    --         local cmp = require("cmp")
    --
    --         cmp.setup({
    --             snippet = {
    --                 expand = function(args)
    --                     require("luasnip").lsp_expand(args.body)
    --                 end
    --             },
    --             windows = {
    --                 completion = cmp.config.window.bordered({border = "double"}),
    --                 -- documentation = cmp.config.window.bordered(),
    --             },
    --             -- preselect = cmp.PreselectMode.Item,
    --             mapping = cmp.mapping.preset.insert({
    --                 ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    --                 -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    --                 -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
    --                 -- ['<C-Space>'] = cmp.mapping.complete(),
    --                 -- ['<C-e>'] = cmp.mapping.abort(),
    --                 ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    --             }),
    --             completion = {
    --                 -- keyword_length = 3
    --             },
    --             sources = cmp.config.sources({
    --                 { name = "luasnip" },
    --                 { name = "buffer" },
    --                 { name = "path" },
    --                 { name = "nvim_lsp" },
    --             }),
    --             -- Enable VSCode like icons in autocomplete
    --             -- formatting = {
    --             --     format = lspkind.cmp_format({
    --             --         mode = "symbol",
    --             --     })
    --             -- }
    --         })
    --         -- cmp.config.formatting = {
    --         -- format = require("tailwindcss-colorizer-cmp").formatter
    --         -- }
    --     end
    -- }
}
