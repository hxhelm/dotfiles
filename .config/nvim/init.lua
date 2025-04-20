-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- vim-plug setup
local Plug = vim.fn["plug#"]
vim.call("plug#begin")

-- list vim plugins here
Plug("tpope/vim-sensible")
Plug("tpope/vim-surround")
Plug("AndrewRadev/splitjoin.vim")

vim.call("plug#end")

-- neovide setup
if vim.g.neovide then
  vim.g.neovide_scale_factor = 1.1
  vim.g.gui_font_default_size = 16
  vim.g.gui_font_size = vim.g.gui_font_default_size
  vim.g.gui_font_face = "FiraCode Nerd Font Mono"
  vim.o.guifont = string.format("%s:h%s:#e-subpixelantialias", vim.g.gui_font_face, vim.g.gui_font_size)

  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_scroll_animation_length = 0

  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy

  vim.keymap.set({ "n", "v", "s", "x", "o", "i", "l", "c", "t" }, "<D-v>", function()
    vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
  end, { noremap = true, silent = true })
end

-- misc settings
vim.g.rustfmt_autosave = 1
