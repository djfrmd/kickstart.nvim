return {
  -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  opts = {
    -- See `:help gitsigns.txt`
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    numhl = true,
    on_attach = function(bufnr)
      vim.keymap.set('n', '<leader>gp', require('gitsigns').preview_hunk,
        { buffer = bufnr, desc = '[G]it hunk [P]review' })
      vim.keymap.set('n', '<leader>gs', require('gitsigns').stage_hunk, { buffer = bufnr, desc = '[G]it hunk [S]tage' })
      vim.keymap.set('n', '<leader>gu', require('gitsigns').reset_hunk, { buffer = bufnr, desc = '[G]it hunk [U]ndo' })
      vim.keymap.set('n', '<leader>gb', require('gitsigns').blame_line, { buffer = bufnr, desc = '[G]it [B]lame line' })

      -- don't override the built-in and fugitive keymaps
      local gs = package.loaded.gitsigns
      vim.keymap.set({ 'n', 'v' }, ']c', function()
        if vim.wo.diff then
          return ']c'
        end
        vim.schedule(function()
          gs.next_hunk()
        end)
        return '<Ignore>'
      end, { expr = true, buffer = bufnr, desc = 'Jump to next hunk' })
      vim.keymap.set({ 'n', 'v' }, '[c', function()
        if vim.wo.diff then
          return '[c'
        end
        vim.schedule(function()
          gs.prev_hunk()
        end)
        return '<Ignore>'
      end, { expr = true, buffer = bufnr, desc = 'Jump to previous hunk' })
    end,
  },
}
