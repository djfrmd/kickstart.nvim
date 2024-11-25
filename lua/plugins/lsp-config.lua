return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    {
      'j-hui/fidget.nvim',
      tag = 'legacy',
      opts = {}
    },
    'folke/neodev.nvim',
  },
}

-- vim: ts=2 sts=2 sw=2 et
