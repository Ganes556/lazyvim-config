-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Esc: tutup floating window (hover/signature/CopilotChat); kalau tidak ada -> clear search.
-- Multicursor punya layer sendiri, lihat lua/plugins/multicursor.lua.
map("n", "<Esc>", function()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if vim.api.nvim_win_get_config(win).relative ~= "" then
      return vim.api.nvim_win_close(win, false)
    end
  end
  vim.cmd("nohlsearch")
end, { desc = "Close float / clear search" })

map("n", "<leader>/", "gcc", { remap = true, desc = "Toggle Comment Line" })
map("x", "<leader>/", "gc", { remap = true, desc = "Toggle Comment Selection" })
