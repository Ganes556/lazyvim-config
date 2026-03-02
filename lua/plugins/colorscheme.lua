-- lua/plugins/colorscheme.lua
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      on_highlights = function(hl, c)
        hl.WinSeparator = {
          fg = "#565f89",
          bg = "NONE",
          bold = true,
        }
      end,
    },
  },
}
