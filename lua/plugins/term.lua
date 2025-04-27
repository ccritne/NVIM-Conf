return {
  "akinsho/toggleterm.nvim",
  config = function()
    local term = require("toggleterm")

    term.setup({
      direction = "float",
      start_in_insert = true,
    })

    local keymap = vim.keymap

    keymap.set(
      "n",
      "<leader>t",
      ":ToggleTerm<CR>",
      { noremap = true, silent = true }
    ) 
  end,
}
