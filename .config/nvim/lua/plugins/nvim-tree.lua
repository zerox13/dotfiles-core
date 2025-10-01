return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
      require("nvim-tree").setup {
          sort_by = "case_sensitive",
          renderer = {
              group_empty = true,
          },
          filters = {
              dotfiles = true,
          },
      }

      vim.keymap.set('n', '<leader>tt', vim.cmd.NvimTreeToggle, {})
      vim.keymap.set('n', '<leader>tf', vim.cmd.NvimTreeFocus, {})
  end,
}

