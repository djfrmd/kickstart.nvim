vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "jenkinsfile",
  callback = function()
    vim.bo.filetype = "groovy"
  end,
})
