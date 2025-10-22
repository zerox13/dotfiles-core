return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        lazygit = {
            enabled = true
        },
        indent = {
            priority = 1,
            enabled = true, -- enable indent guides
            char = "│",
            only_current = true, -- Only show indent guides in the current window
            only_scope = true, -- Only show indent guides of the scope
            hl = "SnacksIndent", ---@type string|string[] hl groups for indent guides
        },
    },
    keys = {
        { "<leader>lg", function() Snacks.lazygit() end, desc = "Lazygit" },

    }


}
