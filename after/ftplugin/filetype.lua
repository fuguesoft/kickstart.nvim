vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('move_lines_normal', {}),
  pattern = { '*.*' },
  callback = function()
    vim.keymap.set('n', '<A-j>', "ddp:echo('A-j')<CR>")
    vim.keymap.set('n', '<A-k>', "ddkP:echo('A-k')<CR>")
  end,
})
return {}
