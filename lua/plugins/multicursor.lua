-- lua/plugins/multicursor.lua
return {
  {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    config = function()
      local mc = require("multicursor-nvim")
      mc.setup()

      vim.keymap.set({ "n", "v" }, "<A-Up>", function()
        mc.lineAddCursor(-1)
      end)
      vim.keymap.set({ "n", "v" }, "<A-Down>", function()
        mc.lineAddCursor(1)
      end)
      vim.keymap.set({ "n", "v" }, "<C-n>", function()
        mc.matchAddCursor(1)
      end)
      vim.keymap.set({ "n", "v" }, "<C-s>", function()
        mc.skipCursor(1)
      end)
      vim.keymap.set({ "n", "v" }, "<C-q>", function()
        mc.matchAddCursor(-1)
      end)
      vim.keymap.set({ "n", "v" }, "<leader>ma", function()
        mc.matchAllAddCursors()
      end)
      vim.keymap.set({ "n", "v" }, "<leader>mx", function()
        mc.deleteCursor()
      end)
      vim.keymap.set({ "n", "v" }, "<leader>mn", function()
        mc.nextCursor()
      end)
      vim.keymap.set({ "n", "v" }, "<leader>mp", function()
        mc.prevCursor()
      end)
      vim.keymap.set("v", "<leader>ms", mc.splitCursors)
      vim.keymap.set("n", "<leader>ml", mc.alignCursors)

      -- exit insert mode back to normal across all cursors
      vim.keymap.set("i", "<Esc>", function()
        if mc.hasCursors() then
          -- feed Esc so all cursors exit insert mode
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "in", false)
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
        end
      end, { nowait = true })

      -- exit multicursor in normal mode
      vim.keymap.set("n", "<C-c>", function()
        if not mc.cursorsEnabled() then
          mc.enableCursors()
        elseif mc.hasCursors() then
          mc.clearCursors()
        end
      end, { nowait = true })

      vim.keymap.set("n", "<Esc>", function()
        if not mc.cursorsEnabled() then
          mc.enableCursors()
        elseif mc.hasCursors() then
          mc.clearCursors()
        else
          vim.cmd("nohlsearch")
        end
      end, { nowait = true })

      local hl = vim.api.nvim_set_hl
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          hl(0, "MultiCursorCursor", { reverse = true, bold = true })
          hl(0, "MultiCursorVisual", { bg = "#3e4451" })
          hl(0, "MultiCursorSign", { link = "SignColumn" })
          hl(0, "MultiCursorDisabledCursor", { reverse = true })
          hl(0, "MultiCursorDisabledVisual", { bg = "#2d3248" })
        end,
      })
      vim.cmd("doautocmd ColorScheme")
    end,
  },
}
