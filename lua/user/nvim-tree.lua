vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local tree_cb = require("nvim-tree.config").nvim_tree_callback

require("nvim-tree").setup({
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    renderer = {
        root_folder_modifier = ":t",
        icons = {
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    arrow_open = "",
                    arrow_closed = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "U",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
    },
    view = {
        width = 30,
        side = "left",
        mappings = {
            list = {
                { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
                { key = "%", action = "create"},
                { key = "h", cb = tree_cb "close_node" },
            },
        },
    },
})

