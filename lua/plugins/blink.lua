return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "none", -- disable all default keymaps

        ["<Down>"] = { "select_next", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
        ["<C-Space>"] = { "show", "fallback" },
      },
    },
  },
}
