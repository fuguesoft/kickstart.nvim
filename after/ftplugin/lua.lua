local set = vim.opt_local

set.shiftwidth = 2
set.number = true
set.relativenumber = true

vim.keymap.set('n', '<A-j>', "ddp:echo('A-j')<CR>")
vim.keymap.set('n', '<A-k>', "ddkP:echo('A-k')<CR>")
