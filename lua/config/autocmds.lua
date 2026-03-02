-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- ~/.config/nvim/lua/config/autocmds.lua
-- add this to your lua/config/autocmds.lua or any init file
-- add this to your lua/config/autocmds.lua or any init file

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "WinSeparator", {
      fg = "#737aa2", -- light blue-grey, visible on tokyonight dark
      bg = "NONE",
      bold = true,
    })
  end,
})

-- fire immediately for the current session
vim.cmd("doautocmd ColorScheme")
