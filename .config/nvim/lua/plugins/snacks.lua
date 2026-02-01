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
            enabled = true,      -- enable indent guides
            char = "│",
            only_current = true, -- Only show indent guides in the current window
            only_scope = true,   -- Only show indent guides of the scope
            hl = "SnacksIndent", ---@type string|string[] hl groups for indent guides
        },
        gh = {
            -- your gh configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        image = {
            -- your image configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    keys = {
        { "<leader>lg", function() Snacks.lazygit() end,                          desc = "Lazygit" },

        -- GitHub Issues and PRs
        { "<leader>gi", function() Snacks.picker.gh_issue() end,                  desc = "GitHub Issues (open)" },
        { "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, desc = "GitHub Issues (all)" },
        { "<leader>gp", function() Snacks.picker.gh_pr() end,                     desc = "GitHub Pull Requests (open)" },
        { "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end,    desc = "GitHub Pull Requests (all)" },

    }


}
