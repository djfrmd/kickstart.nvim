-- [[ Basic AutoCommands ]]

-- [[ Remove trailing spaces on save ]]
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },

  -- Save cursor position
  callback = function(_)
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
})

-- vim: ts=2 sts=2 sw=2 et
