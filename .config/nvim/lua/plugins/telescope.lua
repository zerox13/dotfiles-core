return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
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
        end
    }
}
