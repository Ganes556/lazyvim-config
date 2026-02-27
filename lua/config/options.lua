-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false -- Don't fold everything on open
vim.opt.foldlevel = 99
-- vim.g.autoformat = true
vim.lsp.inlay_hint.enable(false)
-- Auto save when switching buffers / running commands
vim.opt.autowrite = true
vim.opt.autowriteall = true
