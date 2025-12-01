return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    hide_by_name = {
                        '.git',
                    },
                    never_show = {},
                },
            }
        },
        lazy = false, -- neo-tree will lazily load itself
        config = function()
            require("neo-tree").setup({
                event_handlers = {

                    {
                        event = "file_opened",
                        handler = function(file_path)
                            -- auto close
                            -- vimc.cmd("Neotree close")
                            -- OR
                            require("neo-tree.command").execute({ action = "close" })
                        end
                    },

                }
            })


            vim.keymap.set('n', '<leader>tt', ":Neotree toggle<CR>", {})
        end
    }
}
