return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v3.x",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    keys = {
      {
        "<leader>nt",
        function()
          require("neo-tree.command").execute({
            toggle = true,
            source =
            "filesystem",
            position = "float",
          })
        end,
        desc = "[n]eotree [f]loat"
      },
      {
        "<leader>ns",
        function()
          require("neo-tree.command").execute({
            toggle = true,
            source =
            "filesystem",
            position = "left",
          })
        end,
        desc = "[n]eotree [s]idebar"
      },
    }
  }
}

-- vim: ts=2 sts=2 sw=2 et
