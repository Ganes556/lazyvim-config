-- Multicursor: pakai keymap layer supaya <Esc> hanya menangani cursor
-- saat multicursor aktif, tidak menimpa <Esc> global.
return {
  "jake-stewart/multicursor.nvim",
  branch = "1.0",
  config = function()
    local mc = require("multicursor-nvim")
    mc.setup()

    vim.keymap.set({ "n", "x" }, "<C-n>", function()
      mc.matchAddCursor(1)
    end, { desc = "Add cursor on next match" })
    vim.keymap.set({ "n", "x" }, "<C-q>", function()
      mc.matchAddCursor(-1)
    end, { desc = "Add cursor on prev match" })
    vim.keymap.set({ "n", "x" }, "<C-s>", function()
      mc.skipCursor(1)
    end, { desc = "Skip cursor" })
    vim.keymap.set({ "n", "x" }, "<A-Down>", function()
      mc.lineAddCursor(1)
    end, { desc = "Add cursor below" })
    vim.keymap.set({ "n", "x" }, "<A-Up>", function()
      mc.lineAddCursor(-1)
    end, { desc = "Add cursor above" })
    vim.keymap.set({ "n", "x" }, "<leader>ma", mc.matchAllAddCursors, { desc = "Add cursors on all matches" })
    vim.keymap.set({ "n", "x" }, "<leader>mx", mc.deleteCursor, { desc = "Delete cursor" })
    vim.keymap.set("v", "<leader>ms", mc.splitCursors, { desc = "Split selection into cursors" })
    vim.keymap.set("n", "<leader>ml", mc.alignCursors, { desc = "Align cursors" })

    -- Hanya aktif saat ada >1 cursor.
    mc.addKeymapLayer(function(layer)
      layer({ "n", "x" }, "<left>", mc.prevCursor)
      layer({ "n", "x" }, "<right>", mc.nextCursor)
      layer("n", "<Esc>", mc.clearCursors)
    end)

    local hl = vim.api.nvim_set_hl
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = function()
        hl(0, "MultiCursorCursor", { reverse = true, bold = true })
        hl(0, "MultiCursorVisual", { link = "Visual" })
        hl(0, "MultiCursorSign", { link = "SignColumn" })
        hl(0, "MultiCursorDisabledCursor", { reverse = true })
        hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
      end,
    })
    vim.cmd("doautocmd ColorScheme")
  end,
}
