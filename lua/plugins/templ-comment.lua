return {
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    opts = function(_, opts)
      opts.enable_autocmd = true
      opts.languages = opts.languages or {}

      -- Force templ to use //
      opts.languages.templ = {
        __default = "// %s",
      }

      return opts
    end,
  },
}
