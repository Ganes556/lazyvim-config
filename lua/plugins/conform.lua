return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "goimports", "gofmt" },
      templ = { "templ" },
      javascript = { "prettier" },
      typescript = { "prettier" },
    },
    -- format_on_save = true,
  },
}
