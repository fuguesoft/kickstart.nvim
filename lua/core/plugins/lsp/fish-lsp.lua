return {
  {
    'ndonfris/fish-lsp',
    enabled = true,
    -- opts = {
    --   cmd = { 'fish-lsp', 'start' },
    --   cmd_env = { fish_lsp_show_client_popups = false },
    --   ft = { 'fish' },
    --   root_dir = function(fname)
    --     return vim.fs.dirname(vim.fs.find('.git', { path = fname, upward = true })[1])
    --   end,
    --   single_file_support = true,
    -- },
    config = function()
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'fish',
        callback = function()
          vim.lsp.start {
            name = 'fish-lsp',
            cmd = { 'fish-lsp', 'start' },
            cmd_env = { fish_lsp_show_client_popups = false },
          }
        end,
      })
    end,
  },
}
