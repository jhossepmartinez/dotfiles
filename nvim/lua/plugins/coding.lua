return {
    -- Auto pairs
    {
        "windwp/nvim-autopairs",
        config = true,
    },
    -- Commenting
    {
        "numToStr/Comment.nvim",
        config = true,
    },
    {
        "tpope/vim-surround", 
    },
    { 
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            vim.g.indent_blankline_filetype_exclude = { 'text' }
            vim.cmd("highlight IndentBlankLineChar guifg=#6d7f8b")
        end
    },
     {
        "windwp/nvim-ts-autotag",
    },
    {
        "kdheepak/lazygit.nvim",
        keys = {
            { "<Leader>gg", "<cmd>LazyGit<CR>" }
        }
    },
    -- {
    --     "folke/trouble.nvim",
    --     -- lazy = false,
    --     keys = {
    --         { "<Leader>tt", "<cmd>TroubleToggle<CR>" },
    --         -- { "[d", function() require("trouble").next() end }
    --     }
    -- },
    -- Multi-Line editing
    -- {
    --     "mg979/vim-visual-multi",
    -- }
}
