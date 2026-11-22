return {
  {
    "folke/tokyonight.nvim",
    opts = {
      on_highlights = function(hl)
        -- satu-satunya definisi WinSeparator (dulu ada 3 yang saling menimpa)
        hl.WinSeparator = { fg = "#565f89", bg = "NONE", bold = true }
      end,
    },
  },
}
