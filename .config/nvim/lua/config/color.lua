-- Auther: Abdulsalam Aldahir 
-- GitHub: Zerox13

function ColorMyPencils(color) 
    vim.o.background = "dark" -- or "light" for light mode
	-- color = color or "gruvbox"
	color = color or "dracula"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(1, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    vim.cmd[[highlight ColorColumn ctermbg=300 guibg=gray]]
    vim.cmd[[highlight SpellBad ctermbg=255 guibg=red]]
end


ColorMyPencils()
