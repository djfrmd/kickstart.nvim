-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Configure Trouble ]]
local trb = require('trouble')
vim.keymap.set('n', '<leader>xx', function() trb.toggle() end, { desc = 'Toggle Trouble' })
vim.keymap.set('n', '<leader>xw', function() trb.toggle('workspace_diagnostics') end, { desc = 'Workspace Diagnostics' })
vim.keymap.set('n', '<leader>xd', function() trb.toggle('document_diagnostics') end, { desc = 'Document Diagnostics' })
vim.keymap.set('n', '<leader>xq', function() trb.toggle('quickfix') end, { desc = 'Quickfix' })
vim.keymap.set('n', '<leader>xl', function() trb.toggle('loclist') end, { desc = 'Location List' })
vim.keymap.set('n', 'gR', function() trb.toggle("lsp_references") end, { desc = 'Lsp References' })

-- [[ Configure Ctrl-c -> Esc ]]
vim.keymap.set('i', '<C-c>', '<Esc>')

-- vim: ts=2 sts=2 sw=2 et
