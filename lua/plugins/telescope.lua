return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
    })

    local keymap = vim.keymap

    keymap.set(
      "n",
      "<leader>ff",
      "<cmd>Telescope find_files<CR>",
      { noremap = true, silent = true }
    )

    keymap.set(
      "n",
      "<leader>fg",
      "<cmd>Telescope live_grep<CR>",
      { noremap = true, silent = true }
    )

    keymap.set(
      "n",
      "<leader>fb",
      "<cmd>Telescope buffers<CR>",
      { noremap = true, silent = true }
    )

    keymap.set(
      "n",
      "<leader>fh",
      "<cmd>Telescope help_tags<CR>",
      { noremap = true, silent = true }
    )
  end,
}
