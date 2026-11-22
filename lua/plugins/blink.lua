-- blink.cmp: preset "enter" dari LazyVim + navigasi panah + show manual.
-- (Dulu preset = "none" sehingga semua mapping bawaan hilang.)
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      ["<Down>"] = { "select_next", "fallback" },
      ["<Up>"] = { "select_prev", "fallback" },
      ["<C-Space>"] = { "show", "fallback" },
      ["<Esc>"] = { "cancel", "hide", "fallback" },
    },
  },
}
