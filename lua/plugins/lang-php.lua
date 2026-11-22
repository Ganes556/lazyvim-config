-- PHP / Laravel / Blade / Filament.
-- LSP PHP ditentukan vim.g.lazyvim_php_lsp = "intelephense" di lua/config/options.lua.
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              telemetry = { enabled = false },
              environment = { phpVersion = "8.3" },
              files = {
                maxSize = 5000000,
                associations = { "*.php", "*.blade.php", "*.phtml" },
              },
            },
          },
        },
      },
    },
  },

  -- Blade comments: default {{-- --}} untuk direktif, <!-- --> untuk tag HTML.
  -- Tidak ada di tabel bawaan ts-comments; tambahkan di sini.
  {
    "folke/ts-comments.nvim",
    opts = {
      lang = {
        blade = {
          "{{-- %s --}}",
          -- node Blade wajib {{-- --}}
          directive = "{{-- %s --}}",
          php_statement = "{{-- %s --}}",
          -- node HTML boleh <!-- -->
          doctype = "<!-- %s -->",
          element = "<!-- %s -->",
          script_element = "<!-- %s -->",
          style_element = "<!-- %s -->",
        },
      },
    },
  },
}
