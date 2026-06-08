return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "templ",
      },
    },
    config = function(_, opts)
      require("typescript-tools").setup(vim.tbl_deep_extend("force", opts, {
        on_attach = function(client, bufnr)
          if vim.bo[bufnr].filetype == "templ" then
            -- disable by default
            client.server_capabilities.hoverProvider = false

            -- dynamically enable/disable based on cursor position
            vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
              buffer = bufnr,
              callback = function()
                local node = vim.treesitter.get_node()
                if node and node:type() == "script_element_text" then
                  client.server_capabilities.hoverProvider = true
                else
                  client.server_capabilities.hoverProvider = false
                end
              end,
            })
          end
        end,
      }))
    end,
  },
}
