-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

vim.keymap.set('n', '<space><space>x', '<cmd>source %<CR>')
vim.keymap.set('n', '<space>x', ':.lua<CR>')
vim.keymap.set('v', '<space>x', ':lua<CR>')
vim.keymap.set('n', '<space>p', ':.py<CR>')

-- Saving and Quitting
vim.keymap.set('n', '<space>wq', ':wq<CR>')
vim.keymap.set('n', '<space>qq', ':q!<CR>')
vim.keymap.set('n', '<space>ww', ':w<CR>')

-- Tab Management
vim.keymap.set('n', '<space>to', ':tabnew<CR>')
vim.keymap.set('n', '<space>tx', ':tabclose<CR>')
vim.keymap.set('n', '<space>tn', ':tabn<CR>')
vim.keymap.set('n', '<space>tp', ':tabp<CR>')

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnotic message' })
vim.keymap.set('n', 'd]', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnotic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnotic [E]rror message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<esc><esc>', '<c-\\><c-n>:bd!<CR>', { desc = 'Exit terminal mode and close buffer' })

-- Exit insert mode
vim.keymap.set('i', 'ii', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('i', 'kj', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('v', 'ii', '<Esc>', { desc = 'Exit visual mode' })

vim.keymap.set('c', 'ii', '<Esc>', { desc = 'Exit command mode' })

-- Terminal
vim.keymap.set('n', '<space>tt', ':term<CR>')
vim.keymap.set('t', 'ii', '<c-\\><c-n>')

-- Line edit
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { desc = 'move line down' })
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { desc = 'move line up' })
vim.keymap.set('v', '<A-j>', "<Esc>:m '>+1<CR>gv=gi", { desc = 'move line down' })
vim.keymap.set('v', '<A-k>', "<Esc>:m '<-2<CR>gv=gv", { desc = 'move line up' })
vim.keymap.set('n', '<A-j>', 'ddp', { desc = 'move line down' })
vim.keymap.set('n', '<A-k>', 'ddkP', { desc = 'move line up' })

-- Write a keymap to move lines in normal mode.
-- vim.keymap.set('n', '<A-J>', "<Esc>:m '>+1<CR>gv=gi", { desc = 'move line down' })
-- vim.keymap.set('n', '<A-K>', "<Esc>:m '<-2<CR>gv=gv", { desc = 'move line up' })

--[[ Disable Arrow Keys ]]

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Disable arrow keys in insert mode
vim.keymap.set('i', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('i', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('i', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('i', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Disable arrow keys in visual mode
vim.keymap.set('v', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('v', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('v', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('v', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--[[ Window Managment ]]
--
--  See `:help wincmd` for a list of all window commands

--  Use ALT+<hjkl> to switch window focus
--  Focus windows
vim.keymap.set('n', '<A-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<A-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<A-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<A-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--  Use CTRL+<hjkl> to shift window position
-- Shift windows
vim.keymap.set('n', '<C-h>', '<C-w>H', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w>L', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w>J', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>K', { desc = 'Move focus to the upper window' })

-- [[ CSV.VIM Overwrite ]]
vim.g.csv_nomap_space = 1

return {}
