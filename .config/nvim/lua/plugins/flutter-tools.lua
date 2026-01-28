return {
--     'nvim-flutter/flutter-tools.nvim',
--     lazy = false,
--     dependencies = {
--         'nvim-lua/plenary.nvim',
--         'mfussenegger/nvim-dap',
--         'stevearc/dressing.nvim', -- optional for vim.ui.select
--     },
--     config = function()
--         local flutter = require('flutter-tools')
--         flutter.setup_project({
--             name = 'Development',
--             flavor = 'development',
--             target = 'lib/main_development.dart',
--         })
--         flutter.setup({
--             ui = {
--                 border = "rounded",
--                 notification_style = "plugin",
--             },
--             outline = {
--                 open_cmd = "30vnew",
--                 auto_open = false,
--             },
--             closing_tags = {
--                 highlight = "Comment",
--                 prefix = "// ",
--                 enabled = true,
--             },
--
--
--         })
--
-- --        vim.keymap.set('n', '<leader>fr', ':FlutterRun<CR>')
-- --        vim.keymap.set('n', '<leader>fq', ':FlutterQuit<CR>')
-- --        vim.keymap.set('n', '<leader>fR', ':FlutterRestart<CR>')
--     end
}


