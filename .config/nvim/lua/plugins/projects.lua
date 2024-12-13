return {
  "coffebar/neovim-project",
  opts = {
    projects = { -- define project roots
      "~/.config/*",
      "~/RustProjects/*",
      "~/projects/*",
      "~/basecom/*/*",
    },
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    vim.opt.sessionoptions:remove("folds") -- fix for https://github.com/Shatur/neovim-session-manager/issues/133
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
  keys = {
    { "<leader>pe", "<cmd>Telescope neovim-project discover<cr>", desc = "Explore your projects" },
    { "<leader>ph", "<cmd>Telescope neovim-project history<cr>", desc = "Browse your project history" },
  },
}
