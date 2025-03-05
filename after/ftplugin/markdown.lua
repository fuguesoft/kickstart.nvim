vim.opt.wrap = true -- wrap text
vim.opt.breakindent = true -- Match indent on line break
vim.opt.linebreak = true -- Line break on whole words

-- Allow j/k when navigating wrapped lines
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'j', 'gk')
