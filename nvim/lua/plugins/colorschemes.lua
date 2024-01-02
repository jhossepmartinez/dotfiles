return {
    {
        "rose-pine/neovim",
        lazy = false,
        config = function()
            require("rose-pine").setup({
                disable_background = true
            })
        end
    },
    {
        "rhysd/vim-color-spring-night"
    },
    {
        "AlexvZyl/nordic.nvim",
        opts = {
            transparent_bg = true
        }
    },
    {
        "p00f/alabaster.nvim"
    },
    {
        "Yazeed1s/minimal.nvim",
        config = function()
            vim.g.minimal_transparent_background = true
        end
    },
    {
        "lighthaus-theme/vim-lighthaus"
    },
    {
        "elvessousa/sobrio"
    },
    {
        "sam4llis/nvim-tundra",
        config = function()
            require("nvim-tundra").setup({
                transparent_background = true,
            })
        end
    },
    {
        "heraldofsolace/nisha-vim"
    },
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        opts = {
            options = {
                transparent = true,
                colorblind = {
                    enable = false
                }
            }
        }
    },
    {
        "muchzill4/doubletrouble"
    },
    {
        "fenetikm/falcon"
    },
    {
        "Rigellute/rigel"
    },
    {
        "terra-theme/terra-core.nvim",
        lazy = false,
        opts = {
            theme = "fall",
            variant = "night",
            transparent = true
        }
    },
    {
        "antonio-hickey/citrus-mist"
    },
    {
        "projekt0n/github-nvim-theme",
        config = function()
            require("github-theme").setup({
                options = {
                    transparent = true,
                    styles = {
                        strings = "italic"
                    }
                }
            })
        end
    },
    {
        "ayu-theme/ayu-vim",
        lazy = false
    },
    {
        "pineapplegiant/spaceduck",
        lazy = false
    },
    {
        "aktersnurra/no-clown-fiesta.nvim",
        lazy = false,
        opts = {
            transparent = true
        }
    },
    {
        "sts10/vim-pink-moon",
        lazy = false
    }
}
