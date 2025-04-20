return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "html",
        "just",
        "php",
        "python",
        "rust",
        "toml",
        "twig",
      })
    end,
  },
}
