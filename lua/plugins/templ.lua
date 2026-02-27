return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
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
            enable_snippets = true,
          },
        },
      },
      html = {
        filetypes = { "html", "templ" },
      },
      emmet_ls = {
        filetypes = { "html", "templ" },
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
