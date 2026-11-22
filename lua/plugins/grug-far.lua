-- GrugFar: <leader>sr tetap default LazyVim (seluruh project).
-- <leader>sR = replace di file aktif saja (intent file lama yang untracked).
return {
  "MagicDuck/grug-far.nvim",
  keys = {
    {
      "<leader>sR",
      function()
        require("grug-far").open({
          transient = true,
          prefills = {
            search = vim.fn.expand("<cword>"),
            paths = vim.fn.expand("%"),
          },
        })
      end,
      mode = "n",
      desc = "Replace in Current File",
    },
    {
      "<leader>sR",
      function()
        require("grug-far").with_visual_selection({
          transient = true,
          prefills = { paths = vim.fn.expand("%") },
        })
      end,
      mode = "x",
      desc = "Replace Selection in Current File",
    },
  },
}
