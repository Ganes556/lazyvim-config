return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
        ["<Up>"] = cmp.mapping.select_prev_item(),
        ["<Down>"] = cmp.mapping.select_next_item(),
      })

      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<Esc>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.abort()
          else
            fallback()
          end
        end),
      })

      opts.completion = vim.tbl_extend("force", opts.completion, {
        autocomplete = false,
      })
      -- Optional: Add a keymap to manually trigger completion (e.g., <C-Space>)
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<C-Space>"] = cmp.mapping.complete(),
      })

      return opts
    end,
  },
}
