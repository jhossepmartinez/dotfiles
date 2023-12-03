return {
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({
                '*';
                css = { rgb_fn = true; names = true; };
            })
        end
    },
    -- {
    --     "roobert/tailwindcss-colorizer-cmp.nvim",
    --     -- optionally, override the default options:
    --     config = function()
    --         require("tailwindcss-colorizer-cmp").setup({
    --             color_square_width = 2,
    --         })
    --     end
    -- },
    -- {
    --     "themaxmarchuk/tailwindcss-colors.nvim",
    -- },
}
