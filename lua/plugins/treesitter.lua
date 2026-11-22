-- Parser untuk Go/templ (monolit dapoer_panana) + Laravel/Blade/React/Filament.
-- opts_extend sudah didefinisikan LazyVim; jangan set ulang.
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- go + templ
      "go",
      "gomod",
      "gowork",
      "gosum",
      "templ",
      "gotmpl",
      -- php / laravel / filament
      "php",
      "php_only",
      "blade",
      "html",
      "css",
      "scss",
      "xml",
      "dtd",
      "json",
      "jsonc",
      "yaml",
      -- react
      "tsx",
      "typescript",
      "javascript",
      "jsdoc",
      -- editor
      "bash",
      "diff",
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline",
      "query",
      "printf",
      "regex",
      "toml",
      "vim",
      "vimdoc",
    },
  },
}
