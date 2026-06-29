return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "c_sharp", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
