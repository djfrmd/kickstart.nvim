return {
  'folke/which-key.nvim',
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)"
    }
  },
  dependencies = {
    'echasnovski/mini.icons',
  }
}

-- vim: ts=2 sts=2 sw=2 et
