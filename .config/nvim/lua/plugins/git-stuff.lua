-- TODO: Should see if snacks.lazygit can replace this one. To remove?
return {
    {
        "kdheepak/lazygit.nvim",
        lazy = true,
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
            -- { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
            vim.keymap.set("n", "<leader>gB", ":Gitsigns toggle_current_line_blame<CR>", {})
            vim.keymap.set("n", "<leader>gb", ":Gitsigns blame<CR>", {})
            vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", {})
        end

    },
    {
        "tpope/vim-fugitive"
    }

}
