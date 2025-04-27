return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1 

    nvimtree.setup({
      view = {
        width = 30,
      },
      renderer = {
        root_folder_label = function(root_cwd)
          return vim.fn.fnamemodify(root_cwd, ":t")
        end,
        indent_markers = {
          enable = true,
        },
        icons = {
          show = {
            modified = true,
            git = true,
          },
          glyphs = {
            folder = {
              arrow_closed = "", 
              arrow_open = "", 
            },
          },
        },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      modified = {
        enable = true,
      },
      git = {
        enable = true,
        ignore = false,
      },
    })

    local keymap = vim.keymap 

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>") 
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>") 
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>") 
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>") 
    keymap.set("n", "<leader>es", "<cmd>NvimTreeFocus<CR>") 
  end
}
