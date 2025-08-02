-- Auto-resize splits on window resize
vim.api.nvim_create_autocmd('VimResized', {
  group = augroup,
  callback = function()
    if vim.v.event.status == 0 then
      vim.api.nvim_buf_delete(0, {})
    end
  end,
})
return {}
