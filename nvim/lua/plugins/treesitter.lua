return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            -- Enable if using wsl, first intall LLVM tho
            -- requsre'nvim-treesitter.install'.compilers = { "clang" }

            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "c",
                    "lua",
                    "vim",
                    -- "help",

                    "javascript",
                    "typescript",
                    "python",
                    -- "php",
                    "html",
                    "json",
                    "css",
                    -- "rust",
                    -- "markdown",
                    -- "markdown_inline",
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = true,
                },
                indent = { enable = true },
                -- autotag = { enable = true }
            })
        end,
    }
}
