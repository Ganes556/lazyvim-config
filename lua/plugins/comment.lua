return {
  {
    "numToStr/Comment.nvim",
    opts = function(_, opts)
      local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

      opts.pre_hook = function(ctx)
        -- If templ file, always force //
        if vim.bo.filetype == "templ" then
          return "// %s"
        end

        -- Otherwise use normal treesitter behavior
        return ts_context_commentstring.create_pre_hook()(ctx)
      end

      return opts
    end,
  },
}
