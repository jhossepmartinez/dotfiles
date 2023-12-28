return {
    -- Neotree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
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
            }
        }
    }
}

