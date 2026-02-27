-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Disable auto format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    return
  end,
})

-- ~/.config/nvim/lua/config/autocmds.lua
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- Sets split line color to a specific color
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ff0000", bg = "NONE" })
  end,
})
