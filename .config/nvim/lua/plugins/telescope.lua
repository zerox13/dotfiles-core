return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },

    config = function()
        require('telescope').setup {
            pickers = {
                find_files = {
                    -- theme = "ivy"
                    hidden = true,

                    file_ignore_patterns = {
                        "node_modules", "build", "dist", ".git"
                    },
                }
            },
            extensions = {
                fzf = {}
            }
        }

        require('telescope').load_extension('fzf')

        local builtin = require('telescope.builtin')

        -- vim.keymap.set('n', '<leader>ff', builtin.find_files,        { desc = "Find Files" })
        -- vim.keymap.set('n', '<leader>fb', builtin.buffers,           { desc = "Find Buffers" })
        -- vim.keymap.set('n', '<leader>fh', builtin.help_tags,         { desc = "Help Tags" })

        -- Git Pickers
        -- vim.keymap.set('n', '<leader>gc', builtin.git_commits,       { desc = "Git Commits" })
        -- vim.keymap.set('n', '<leader>gs', builtin.git_status,        { desc = "Git Status" })
        -- vim.keymap.set('n', '<leader>gf', builtin.git_files,         { desc = "Git Files" })
        -- vim.keymap.set('n', '<leader>gt', builtin.git_stash,         { desc = "Git Stash" })
        --
        -- LSP Pickers
        vim.keymap.set('n', '<leader>rr', builtin.lsp_references, { desc = "LSP References" })
        vim.keymap.set('n', '<leader>rd', builtin.lsp_definitions, { desc = "LSP Definitions" })
        vim.keymap.set('n', '<leader>ric', builtin.lsp_incoming_calls, { desc = "LSP Incoming Calls" })
        vim.keymap.set('n', '<leader>roc', builtin.lsp_outgoing_calls, { desc = "LSP Outgoing Calls" })




        -- Telescope general
        vim.keymap.set('n', '<leader>cs', builtin.colorscheme, { desc = "chose colorscheme" })
        vim.keymap.set('n', '<leader>man', builtin.man_pages, { desc = "man panges"})
        vim.keymap.set('n', '<leader>ms', builtin.marks, { desc = "chose marks" })

        -- Fuzzy find nvim dotfiles
        local function find_nvim_config()
            require('telescope.builtin').find_files {
                cwd = vim.fn.stdpath("config")
            }
        end
        vim.keymap.set("n", "<space>en", find_nvim_config, { desc = "Find Neovim config" })

        -- Fuzzy find all dotfiles
        local function find_dotfiles()
            require('telescope.builtin').find_files {
                cwd = "$HOME/dotfiles-core/"
            }

        end

        vim.keymap.set("n", "<space>ed", find_dotfiles, { desc = "Find all dotfiles" }
    )

    require "config.telescope.multigrep".setup()
end
}
}
