return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      html = {
        filetypes = { "html", "templ" },
      },
      emmet_ls = {
        filetypes = { "html", "templ" },
      },
      gopls = {
        settings = {
          gopls = {
            filetypes = { "templ", "go" },
          },
        },
      },
      templ = {
        filetypes = { "templ" },
        cmd = { "templ", "lsp" },
        settings = {
          templ = {
            enable_snippets = false,
          },
        },
      },

      tsserver = {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "templ",
        },
      },
    },
  },
}
