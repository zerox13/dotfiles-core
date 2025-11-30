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

            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

            -- Git Pickers
            vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
            vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
            vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
            vim.keymap.set('n', '<leader>gt', builtin.git_stash, {})

            -- LSP Pickers

            -- Telescope general
            vim.keymap.set('n', '<leader>cs', builtin.colorscheme, {})
            vim.keymap.set('n', '<leader>man', builtin.man_pages, {})
            vim.keymap.set('n', '<leader>ms', builtin.marks, {})

            -- Fuzzy find nvim dotfiles
            vim.keymap.set("n", "<space>en", function()
                require('telescope.builtin').find_files {
                    cwd = vim.fn.stdpath("config")
                }
            end)

            -- Fuzzy find all dotfiles
            vim.keymap.set("n", "<space>ed", function()
                require('telescope.builtin').find_files {
                    cwd = "$HOME/dotfiles-core/"
                }
            end)
        end
    }
}
