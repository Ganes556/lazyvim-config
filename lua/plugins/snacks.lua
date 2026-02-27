return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
	  gh = {
	    enabled = false,
          },
          explorer = {
            hidden = true,
            ignored = true,
          },
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}
