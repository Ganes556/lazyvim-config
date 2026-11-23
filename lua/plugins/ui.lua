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
    init = function()
      local paste = vim.paste
      vim.paste = function(lines, phase)
        if vim.bo.filetype ~= "snacks_terminal" or vim.bo.buftype ~= "terminal" or vim.fn.getcmdtype() ~= "" then
          return paste(lines, phase)
        end

        -- Pakai bracketed paste bawaan PTY, termasuk saat scrollback sedang diseleksi.
        vim.api.nvim_put(lines, "c", false, true)
        if (phase == -1 or phase == 3) and vim.api.nvim_get_mode().mode ~= "t" then
          vim.cmd.normal({ args = { "\27" }, bang = true })
          vim.cmd.startinsert()
        end
        return true
      end
    end,
    opts = {
      terminal = {
        win = {
          -- Biarkan shell menerima Ctrl+H/J/K/L dan Esc; Ctrl+/ tetap membuka/menyembunyikan terminal.
          keys = { nav_h = false, nav_j = false, nav_k = false, nav_l = false, term_normal = false },
        },
      },
      picker = {
        sources = {
          explorer = { hidden = true, ignored = true },
          files = { hidden = true, ignored = true },
        },
      },
    },
  },
}
