-- default for everything
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

-- templ only
vim.api.nvim_create_autocmd("FileType", {
  pattern = "templ",
  callback = function()
    vim.opt_local.foldmethod = "indent"
  end,
})
