-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- PHP/Laravel: pakai intelephense (dibaca oleh extras lang.php)
vim.g.lazyvim_php_lsp = "intelephense"
-- TypeScript/React: vtsls (default LazyVim, eksplisit supaya tidak ambigu)
vim.g.lazyvim_ts_lsp = "vtsls"

vim.opt.autowrite = true
vim.opt.autowriteall = true
vim.lsp.inlay_hint.enable(false)

-- fold: cukup default LazyVim (foldmethod=indent global, treesitter expr per-buffer,
-- foldlevel=99 supaya tidak semua terlipat saat buka file). Jangan set manual.
