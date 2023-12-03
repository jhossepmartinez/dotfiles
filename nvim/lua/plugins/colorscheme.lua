return {
    {
        "simao-ferreira/thescream.nvim"
    },
    {
        "stevedylandev/flexoki-nvim"
    },
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        config = function()
            require("nordic").setup({
                transparent_bg = true,
            })
        end
    },
    {
        "rose-pine/neovim",
        lazy = false,
        config = function()
            require("rose-pine").setup({
                dark_variant = "main",
                disable_background = true,
                disable_float_background = true,
            })
            -- vim.cmd("colorscheme rose-pine")
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require("kanagawa").setup({
                transparent = true,
            })
        end,
    },
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        config = function()
            require("nightfox").setup({
                options = {
                    transparent = true,
                    styles = {
                        comments = "italic",
                    },
                },
                groups = {
                    all = {
                        CursorLine = { bg = "NONE" }
                    }
                }
            })
            -- vim.cmd("colorscheme terafox")
        end,
    },
    {
        "neanias/everforest-nvim",
        config = function()
            require("everforest").setup({
                transparent_background_level = 1,
                italics = true,
            })
        end
    },
    {
        "pineapplegiant/spaceduck",
    },
    {
        "ellisonleao/gruvbox.nvim",
        opts = {
            transparent_mode = true,
        }
    },
    {
        "Shatur/neovim-ayu",
    },
    {
        "nyoom-engineering/oxocarbon.nvim"
    },
    {
        "muchzill4/doubletrouble"
    }
}
