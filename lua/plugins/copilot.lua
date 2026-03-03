-- lua/plugins/copilot.lua
return {
  -- copilot.lua handles inline suggestions only
  {
    "zbirenbaum/copilot.lua",
    opts = {
      filetypes = { templ = true, go = true, javascript = true },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = { accept = "<S-Tab>" },
      },
      -- do NOT put systemPrompt here, let CopilotChat handle it
    },
  },

  -- CopilotChat handles llms.txt as context
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = function(_, opts)
      local f = io.open(vim.fn.getcwd() .. "/docs/llms.txt", "r")
      if f then
        local content = f:read("*a")
        f:close()
        opts.system_prompt = "Use this project documentation as reference:\n\n" .. content
      end
      return opts
    end,
  },
}
