-- Tools eksternal yang dipakai formatter/LSP di config ini.
-- vim.g.lazyvim_php_lsp = "intelephense" -> server itu ikut terpasang otomatis via mason-lspconfig.
return {
  "mason-org/mason.nvim",
  opts_extend = { "ensure_installed" },
  opts = {
    ensure_installed = {
      -- php / laravel
      "pint",
      "blade-formatter",
      "php-cs-fixer",
      -- go / templ
      "templ",
      "goimports",
      "gofumpt",
      "golangci-lint",
    },
  },
}
