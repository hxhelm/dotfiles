-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_scale_factor = 1.1
  vim.g.gui_font_default_size = 16
  vim.g.gui_font_size = vim.g.gui_font_default_size
  vim.g.gui_font_face = "FiraCode Nerd Font Mono"
  vim.o.guifont = string.format("%s:h%s", vim.g.gui_font_face, vim.g.gui_font_size)
end
