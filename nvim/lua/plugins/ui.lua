return {
    -- Neotree
    {
        "nvim-neo-tree/neo-tree.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim"
        },
        keys = {
            { "<Leader>nm", "<cmd>Neotree toggle<CR>"}
        },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = true,
                window = {
                    width = 20,
                }
            })
            vim.cmd("Neotree toggle")
        end
    },
    -- Bufferline
    {
        "akinsho/bufferline.nvim",
        lazy = false,
        opts = {
            options = {
                -- indicator = {
                --     style = "underline",
                -- },
                buffer_close_icon = "",
                separator_style = {"", ""},
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "NeoTree",
                        -- text = function()
                        --     return vim.fn.getcwd()
                        -- end,
                        text_align = "left",
                        separator = "|",
                        highlight = "Directory"
                    }
                },
                sort_by = "insert_after_current",
            },
            highlights = {
                fill = {
                    bg = "",
                },
                background = {
                    fg = "",
                    bg = ""
                },
                buffer_visible = {
                    bg = "",
                    fg = "#5e6d77"
                },
                buffer_selected = {
                    bg = "",
                    fg = "White"
                },
                tab = {
                    bg = "Red"
                },
                close_button = {
                    fg = "#5e6d77",
                    bg = ""
                },
                close_button_selected = {
                    fg = "White",
                    bg = ""
                },
                close_button_visible = {
                    fg = "#5e6d77",
                    bg = ""
                },
                indicator_selected = { -- Indicated selected buffer
                    bg = "",
                    fg = ""
                },
                indicator_visible = { -- Indicated selected buffer
                    bg = "",
                    fg = ""
                },
                offset_separator = { -- Separator from neotree
                    bg = "",
                    fg = "#0f1c1e"
                },
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
                trunc_marker = {
                    bg = "",
                    fg = ""
                }


                -- pick = {
                --     bg = 'Red'
                -- },
                -- pick_visible = {
                --     bg = "Red"
                -- },
                --     close_button_visible = {
                --         fg = "#5a93aa"
                --     },
                --     buffer_visible = {
                --         fg = "#5a93aa"
                --     }
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
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = true,
                    disabled_filetypes = { "neo-tree" }
                }
            })
        end
    },
    -- Breadcrumbs
    -- {
    --     "utilyre/barbecue.nvim",
    --     name = "barbecue",
    --     version = "*",
    --     dependencies = {
    --         "SmiteshP/nvim-navic",
    --         "nvim-tree/nvim-web-devicons", -- optional dependency
    --     },
    --     opts = {
    --         -- configurations go here
    --         theme = {
    --             normal = { fg = "None" }
    --         }
    --     },
    --     -- config = function()
    --     --     require("barbecue.ui").toggle(true)
    --     -- end
    -- }
    -- Breadcrumbs
    -- {
    --     "loctvl842/breadcrumb.nvim",
    --     config = function()
    --         require("breadcrumb").setup({
    --             disabled_filetype = {
    --                 "",
    --                 "help",
    --             },
    --             icons = {
    --                 File = " ",
    --                 Module = " ",
    --                 Namespace = " ",
    --                 Package = " ",
    --                 Class = " ",
    --                 Method = " ",
    --                 Property = " ",
    --                 Field = " ",
    --                 Constructor = " ",
    --                 Enum = "練",
    --                 Interface = "練",
    --                 Function = " ",
    --                 Variable = " ",
    --                 Constant = " ",
    --                 String = " ",
    --                 Number = " ",
    --                 Boolean = "◩ ",
    --                 Array = " ",
    --                 Object = " ",
    --                 Key = " ",
    --                 Null = "ﳠ ",
    --                 EnumMember = " ",
    --                 Struct = " ",
    --                 Event = " ",
    --                 Operator = " ",
    --                 TypeParameter = " ",
    --             },
    --             separator = ">",
    --             depth_limit = 0,
    --             depth_limit_indicator = "..",
    --             color_icons = true,
    --             highlight_group = {
    --                 component = "BreadcrumbText",
    --                 separator = "BreadcrumbSeparator",
    --             },
    --         })
    --         require("breadcrumb").init()
    --
    --     end
    -- }
}

