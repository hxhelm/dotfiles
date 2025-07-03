-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- misc settings
if vim.fn.has('macunix') == 1 then
  vim.g.clipboard = "pbcopy"
else
  vim.g.clipboard = "wl-copy"
end

-- setup and enable language servers
vim.lsp.config('luals', {
  on_init = function()
    print('luals now runs in the background')
  end,
})
vim.lsp.enable('luals')

vim.lsp.config('rust_analyzer', {
  on_init = function()
    print('rust-analyzer now runs in the background')
  end,
})
vim.g.rustfmt_autosave = 1
vim.lsp.enable('rust_analyzer')

vim.lsp.config('phpactor', {
  on_init = function()
    print('phpactor now runs in the background')
  end,
})
vim.lsp.enable('phpactor')

local lsp_attach = function(args)
  local opts = { buffer = args.buf }

  vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
  vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
  vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
  vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
  vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
  vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
  vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
  vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
  vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
  vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
end
vim.api.nvim_create_autocmd('LspAttach', { callback = lsp_attach })
