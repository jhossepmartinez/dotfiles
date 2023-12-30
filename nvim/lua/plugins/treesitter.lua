return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "c",
                "lua",
                "vim",

                "javascript"
            },
            highlight = {
                enable = false,
            },
        }
    }
}
