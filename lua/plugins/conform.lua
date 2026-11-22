-- Formatter khusus Laravel/Go; js/ts/css/json/html sudah ditangani extras prettier.
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "goimports", "gofumpt" },
      templ = { "templ" },
      php = { "pint" },
      blade = { "blade-formatter" },
    },
  },
}
