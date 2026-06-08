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
        on_attach = function(client, bufnr)
          if vim.bo[bufnr].filetype == "templ" then
            vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
              buffer = bufnr,
              callback = function()
                local node = vim.treesitter.get_node()
                if node and node:type() == "script_element_text" then
                  client.server_capabilities.hoverProvider = false
                else
                  client.server_capabilities.hoverProvider = true
                end
              end,
            })
          end
        end,
      },
      emmet_ls = {
        filetypes = { "html", "templ" },
      },
      gopls = {
        filetypes = {
          "go",
          "gomod",
          "gowork",
          "gotmpl",
          "templ",
        },
        on_attach = function(client, bufnr)
          if vim.bo[bufnr].filetype == "templ" then
            vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
              buffer = bufnr,
              callback = function()
                local node = vim.treesitter.get_node()
                if node and node:type() == "script_element_text" then
                  client.server_capabilities.hoverProvider = false
                else
                  client.server_capabilities.hoverProvider = true
                end
              end,
            })
          end
        end,
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

      tsserver = {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
        },
      },
    },
  },
}
