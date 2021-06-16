require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "lua", "html", "php", "scss" },
  highlight = { enable = true },
  indent = {
    enable = true,
    disable = { "javascript", "typescript", "lua", "html", "scss" },
  },
}
