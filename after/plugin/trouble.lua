local trb = require('trouble')
vim.keymap.set('n', '<leader>xx', function() trb.toggle() end, { desc = 'Toggle Trouble' })
vim.keymap.set('n', '<leader>xw', function() trb.toggle('workspace_diagnostics') end, { desc = 'Workspace Diagnostics' })
vim.keymap.set('n', '<leader>xd', function() trb.toggle('document_diagnostics') end, { desc = 'Document Diagnostics' })
vim.keymap.set('n', '<leader>xq', function() trb.toggle('quickfix') end, { desc = 'Quickfix' })
vim.keymap.set('n', '<leader>xl', function() trb.toggle('loclist') end, { desc = 'Location List' })
vim.keymap.set('n', 'gR', function() trb.toggle("lsp_references") end, { desc = 'Lsp References' })

-- vim: ts=2 sts=2 sw=2 et
