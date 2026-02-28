return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Luaaa
            vim.lsp.enable('lua_ls')
            -- PYTHON
            vim.lsp.enable('basedpyright')
            vim.lsp.enable('ruff')
            -- WEB DEV
            vim.lsp.enable('html')
            vim.lsp.enable('cssls')
            vim.lsp.enable('eslint')
            vim.lsp.enable('ts_ls')
            vim.lsp.enable('phpactor')
            -- DevOps
            vim.lsp.enable('yamlls')
            vim.lsp.enable('tofu_ls')
            -- GENERAL
            vim.lsp.enable('jsonls')
            vim.lsp.enable('bashls')
            vim.lsp.enable('marksman')
            vim.lsp.enable('jinja_lsp')





            vim.lsp.config['basedpyright'] = {
                root_markers = {
                    'pyproject.toml',
                    '.git',
                },
                settings = {
                    python = {
                        analysis = {
                            autoSearchPaths = true,
                            useLibraryCodeForTypes = true,
                            diagnosticMode = 'openFilesOnly',
                        },
                    },
                },
            }
            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(ev)
                    local client = vim.lsp.get_client_by_id(ev.data.client_id)
                    if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
                        vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }

                        -- vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end,
                        --     { buffer = ev.buf, remap = false, desc = "Go to Definition" })
                        -- vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end,
                        --     { buffer = ev.buf, remap = false, desc = "Go to Declaration" })
                        -- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end,
                        --     { buffer = ev.buf, remap = false, desc = "Open Diagnostic Float" })
                        -- -- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, {})
                        -- -- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, {})
                        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end,
                            { buffer = ev.buf, remap = false, desc = "Code Action" })
                        -- vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end,
                        --     { buffer = ev.buf, remap = false, desc = "List References" })
                        -- vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end,
                        --     { buffer = ev.buf, remap = false, desc = "Rename Symbol" })
                        --
                        vim.keymap.set("n", "<leader>fr", function() vim.lsp.buf.format() end,
                            { buffer = ev.buf, remap = false, desc = "Format Document" })

                        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end,
                            { buffer = ev.buf, remap = false, desc = "Signature Help" })
                    end
                end
            })
        end,
    },
    {
        "adoyle-h/lsp-toggle.nvim",
        config = function()
            require('lsp-toggle').setup{
                telescope = true,
            }
        end

    }
}
