return {
  "zk-org/zk-nvim",
  keys = {
    { "<leader>zp", function() require("zk").pick_notes({}, {}, function() end) end, desc = "[z]k [p]ick" },
    { "<leader>zt", function() require("zk").pick_tags() end, desc = "[z]k [t]ags" },
    { "<leader>zn", function() require("zk").new() end, desc = "[z]k [n]ew" },
  },
  config = function()
    require("zk").setup({
      picker = "telescope",
      lsp = {
          -- `config` is passed to `vim.lsp.start_client(config)`
        config = {
          cmd = { "zk", "lsp" },
          name = "zk",
          -- on_attach = ...
          -- etc, see `:h vim.lsp.start_client()`
        },
        -- automatically attach buffers in a zk notebook that match the given filetypes
        auto_attach = {
          enabled = true,
          filetypes = { "markdown" },
        },
      },
    })
  end
}

