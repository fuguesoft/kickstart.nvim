return {
  vim.lsp.config['luals'] {
    -- Command and arguments to start the server.
    cmd = { 'lua-language-server' },
    -- Filetypes to automatically attach to.
    filetypes = { 'lua' },
    settings = {
      Lua = {
        diagnostics = {
          disable = { 'missing-fields' },
          globals = { 'vim' }, -- Get the language server to recognize the `vim` global
        },
      },
    },
  },
  vim.lsp.enable 'luals',
}
