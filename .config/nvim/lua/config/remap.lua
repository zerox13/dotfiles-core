vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<esc>", {noremap=true})

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<TAB>", vim.cmd.bnext)
vim.keymap.set("n", "<S-TAB>", vim.cmd.bprevious)


-- kill the buffer
vim.keymap.set("n", "<leader>d", vim.cmd.bd)

-- The copy and paste shit 
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>S", ":set spell! spelllang=en_us<CR>")


 -- new stuff
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Quickfix things
vim.keymap.set("n", "<leader>j", "<cmd>cnext<CR>")
vim.keymap.set("n", "<leader>k", "<cmd>cprev<CR>")

-- LaTeX maps 
vim.keymap.set("n", "<leader>lc", ":! pdflatex main.tex <CR><CR>")
vim.keymap.set("n", "<leader>lv", ":! open main.pdf & disown <CR><CR>")


