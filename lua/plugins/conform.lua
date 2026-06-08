return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "goimports", "gofumpt" },
      templ = { "templ" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      php = { "pint" },
    },
    -- format_on_save = true,
  },
}
