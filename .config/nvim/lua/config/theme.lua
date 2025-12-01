-- Auther: Abdulsalam Aldahir
-- GitHub: Zerox13

local function themeSetup(color)
    vim.o.background = "dark" -- or "light" for light mode
    color = color or "tokyonight"
    -- color = color or "dracula"
    vim.cmd.colorscheme(color)

    vim.cmd [[highlight SpellBad ctermbg=255 guibg=yellow]]


    -- Telescope border colors
    -- vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg = '#fb4934' }) -- Red
    -- vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { fg = '#b8bb26' }) -- Green
    -- vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { fg = '#fabd2f' }) -- Yellow
end

themeSetup()
