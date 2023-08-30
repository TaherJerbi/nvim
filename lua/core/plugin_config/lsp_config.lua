local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({
    buffer = bufnr,
    preserve_mappings = false,
  })
end)


-- Keybindings
vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')
vim.keymap.set('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

lsp.setup()
