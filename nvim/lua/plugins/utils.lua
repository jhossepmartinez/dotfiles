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
    {
        "rest-nvim/rest.nvim",
        config = function()
            require("rest-nvim").setup({
                result_split_horizontal = false,
                skip_ssl_verification = false,
                highlight = {
                    enabled = true,
                    timeout = 150
                },
                result = {
                    show_url = true,
                    show_http_indo = true,
                    show_headers = true,
                },
                jump_to_request = false,
                env_file = ".env",
                custom_dynamic_variables = {},
                yank_dry_run = true
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
