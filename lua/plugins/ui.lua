-- Plugin pendukung yang dipakai apa adanya.
return {
  -- folding pakai ufo: LSP/treesitter provider, ufo mengatur foldmethod sendiri.
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    event = "BufReadPost",
    opts = {
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    },
    keys = {
      {
        "zR",
        function()
          require("ufo").openAllFolds()
        end,
        desc = "Open all folds",
      },
      {
        "zM",
        function()
          require("ufo").closeAllFolds()
        end,
        desc = "Close all folds",
      },
    },
  },

  -- matchup: hanya ops (dulu setup dipanggil dua kali: init + opts).
  {
    "andymass/vim-matchup",
    opts = { treesitter = { stopline = 500 } },
  },

  -- tampilkan dotfile di picker files/explorer
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = { hidden = true, ignored = true },
          files = { hidden = true, ignored = true },
        },
      },
    },
  },
}
