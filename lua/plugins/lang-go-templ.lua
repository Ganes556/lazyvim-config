-- Go monolit (dapoer_panana) + templ.
-- Extras lang.go menangani gopls, formatter, lint. Di sini hanya templ.
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = {
          filetypes = { "templ" },
        },
        -- gd di file hasil generated templ -> buka komponen .templ bersaudara.
        -- Didaftarkan lewat `keys` server (cara resmi LazyVim) supaya tidak
        -- beradu urutan dengan keymap gd global.
        gopls = {
          keys = {
            {
              "gd",
              function()
                local templ = vim.api.nvim_buf_get_name(0):match("^(.*)_templ%.go$")
                if not templ or vim.uv.fs_stat(templ .. ".templ") == nil then
                  return vim.lsp.buf.definition()
                end
                local name = vim.fn.expand("<cword>")
                vim.cmd.edit(vim.fn.fnameescape(templ .. ".templ"))
                vim.cmd("silent! /templ " .. vim.fn.escape(name, "/\\"))
              end,
              desc = "Goto Definition",
            },
          },
        },
        -- templ LSP sudah meneruskan ekspresi Go ke gopls;
        -- jangan tambahkan "templ" ke gopls, hasilnya hover ganda.
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    opts = {
      aliases = { templ = "html" },
    },
  },
}
