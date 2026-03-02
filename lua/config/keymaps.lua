-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- =========================
-- LSP Keymaps (Clean Setup)
-- =========================

local map = vim.keymap.set

-- Keep LSP default style (gr prefix)

map("n", "gr", vim.lsp.buf.references, { desc = "References" })
map("n", "grn", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "gra", vim.lsp.buf.code_action, { desc = "Code Action" })
map("n", "gri", vim.lsp.buf.implementation, { desc = "Implementation" })
map("n", "grt", vim.lsp.buf.type_definition, { desc = "Type Definition" })

-- keep fast navigation
map("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })

-- =========================
-- Comment Keymaps
-- =========================

-- Requires Comment.nvim (already included in LazyVim)
map("n", "<leader>/", "gcc", { remap = true, desc = "Toggle Comment Line" })
map("v", "<leader>/", "gc", { remap = true, desc = "Toggle Comment Selection" })
