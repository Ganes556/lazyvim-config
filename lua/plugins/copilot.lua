-- lua/plugins/copilot.lua
return {
  -- 1️⃣ Shared context loader test
  {
    "zbirenbaum/copilot.lua",
    opts = function(_, opts)
      local docs_path = vim.fn.getcwd() .. "/docs/llms.md"
      local f = io.open(docs_path, "r")
      if f then
        _G.templ_llms_context = f:read("*a")
        f:close()
      end

      opts.filetypes = { templ = true, go = true, javascript = true }
      opts.suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = { accept = "<S-Tab>" },
      }

      return opts
    end,
  },

  -- 2️⃣ CopilotChat uses the same global context
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = function(_, opts)
      if _G.templ_llms_context then
        opts.system_prompt = "Use this project documentation as reference:\n\n" .. _G.templ_llms_context
      end
      return opts
    end,
  },
}
