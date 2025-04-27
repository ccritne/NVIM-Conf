return {
  'Wansmer/treesj',
  keys = { '<space>m', '<space>j', '<space>s' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' }, 
  config = function()
    require('treesj').setup({
      use_default_keymaps = true,
      check_syntax_error = true,
      max_join_length = 120,
      cursor_behavior = 'hold',
      notify = true,
      dot_repeat = true,
      on_error = nil,
      langs = {
        lua = require("treesj.langs.lua"),
        python = require("treesj.langs.python"),
        cpp = require("treesj.langs.cpp"),
        html = require("treesj.langs.html"),
        javascript = require("treesj.langs.javascript"),
        java = require("treesj.langs.java"),
        kotlin = require("treesj.langs.kotlin"),
      }, 
  })
  end,
}
