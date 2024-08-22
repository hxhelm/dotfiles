return {
  {
    "0xstepit/flow.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("flow").setup({
        fluo_color = "pink",
        mode = "normal",
        aggressive_spell = false,
      })
      vim.cmd("colorscheme flow")
    end,
  },
}
