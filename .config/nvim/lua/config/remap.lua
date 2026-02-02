-- vim.keymap.set("i", "jk", "<esc>", {noremap=true})

vim.keymap.set("n", "<TAB>", vim.cmd.bnext)
vim.keymap.set("n", "<S-TAB>", vim.cmd.bprevious)

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set({"n", "v"}, "<space>x", ":.lua<CR>")

-- The copy and paste shit 
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Internal spell check
vim.keymap.set("n", "<leader>S", ":set spell! spelllang=en_us<CR>")


 -- new stuff
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace"})

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Quickfix things
vim.keymap.set("n", "<leader>n", "<cmd>cnext<CR>")
vim.keymap.set("n", "<leader>p", "<cmd>cprev<CR>")

-- folding
vim.keymap.set("n", "-", "<cmd>foldclose<CR>")
vim.keymap.set("n", "+", "<cmd>foldopen<CR>")


-- Toggle floating terminal
vim.keymap.set("n", "<leader>j", function()
    vim.cmd.Floaterminal()
end)
-- LaTeX maps 
--vim.keymap.set("n", "<leader>lc", ":! pdflatex main.tex <CR><CR>")
--vim.keymap.set("n", "<leader>lv", ":! open main.pdf & disown <CR><CR>")



