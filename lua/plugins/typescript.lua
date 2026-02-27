return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = function(_, opts)
      opts.filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "templ",
      }
    end,
  },
}
