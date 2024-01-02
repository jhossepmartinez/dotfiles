return {
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
        "numToStr/Comment.nvim",
        lazy = false,
        config = true,
    },
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = true
    },
    {
        "windwp/nvim-autopairs",
        config = true
    }
}
