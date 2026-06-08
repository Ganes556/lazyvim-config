return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          filetypes = { "php" },
          enabled = true,
        }, -- This enables Intelephense
        phpactor = { enabled = false }, -- This disables Phpactor
        templ = {},
      },
    },
  },
}
