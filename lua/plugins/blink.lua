-- lua/plugins/blink.lua stays clean, no workarounds needed
return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap = {
        preset = "none",
        ["<Down>"] = { "select_next", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
        ["<C-Space>"] = { "show", "fallback" },
        ["<Esc>"] = { "cancel", "hide", "fallback" },
      }
      return opts
    end,
  },
}
