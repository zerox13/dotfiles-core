vim.lsp.enable({
    'lua_ls',
    'gopls',
    'dartls'
})


vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
            vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })

            -- Keymaps
            vim.keymap.set('i', '<C-Space>', function()
                vim.lsp.completion.get()
            end)

            local opts = {buffer = ev.buf, remap = false}
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            -- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            -- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)

            vim.keymap.set("n", "<leader>fr", function() vim.lsp.buf.format() end, opts)

            vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

        end
    end
})


-- Diagnostics
vim.diagnostic.config({
    -- Use the default configuration
    -- virtual_lines = true

    -- Alternatively, customize specific options
    virtual_lines = {
        -- Only show virtual line diagnostics for the current cursor line
        current_line = true,
    },
})
