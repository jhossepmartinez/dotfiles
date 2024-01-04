return {
    -- Neotree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        keys = {
            { "<Leader>nm", "<cmd>Neotree toggle<CR>" },
        },
        opts = {
            close_if_last_window = true,
            window = {
                width = 20,
            },
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = false,
                }
            }
        }
    },

    -- Bufferline
    {
        "akinsho/bufferline.nvim",
        lazy = false,
        opts = {
            options = {
                indicator = { icon = "|" },
                separator_style = { "", "" }, -- Removes buffer separators
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "NeoTree",
                        text_align = "left",
                        separator = "|",
                        highlight = "Directory"
                    }
                }
            },
            highlights = {
                separator = {
                    bg = "",
                    fg = ""
                },
                separator_visible = {
                    bg = "",
                    fg = ""
                },
                separator_selected = {
                    bg = "",
                    fg = ""
                },
                trunc_marker = { -- Arrows that appear when over max width
                    bg = "",
                    fg = ""
                },
                offset_separator = { -- Title offset
                },
                indicator_visible = {
                    bg = "",
                    fg = ""
                },
                indicator_selected = {
                    bg = "",
                    fg = ""
                },
            }
        },
        keys = {
            { "<S-l>", "<cmd>BufferLineCycleNext<CR>" },
            { "<S-h>", "<cmd>BufferLineCyclePrev<CR>" }
        }
    },

    -- Lualine
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = true,
                    disabled_filetypes = { "neo-tree" },
                }
            })
        end
    }
}

