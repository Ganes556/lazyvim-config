return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    -- Use a distinct highlight that works with any LazyVim colorscheme
    vim.g.VM_theme = "codedark"

    -- Customize highlight groups for visibility
    vim.g.VM_highlight_matches = "underline"

    vim.g.VM_Mono_hl = "Visual" -- main cursor highlight
    vim.g.VM_Cursor_hl = "Visual" -- other cursors
    vim.g.VM_Extend_hl = "VisualNOS" -- extended regions
    vim.g.VM_Insert_hl = "DiffAdd" -- insert mode cursors

    -- Make all VM cursors more visible by overriding after colorscheme loads
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = function()
        vim.api.nvim_set_hl(0, "VM_Cursor", { reverse = true, bold = true })
        vim.api.nvim_set_hl(0, "VM_Extend", { bg = "#3e4451", bold = true })
        vim.api.nvim_set_hl(0, "VM_Mono", { reverse = true, bold = true })
        vim.api.nvim_set_hl(0, "VM_Insert", { bg = "#98c379", fg = "#000000", bold = true })
      end,
    })
  end,
}
