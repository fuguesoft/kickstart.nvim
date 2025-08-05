-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Running code in browser
vim.keymap.set('n', '<leader><leader>x', ':source ~/.config/nvim/init.lua<CR>')
vim.keymap.set('n', '<leader>nl', ':.lua<CR>')
vim.keymap.set('v', '<leader>nl', ':lua<CR>')
vim.keymap.set('n', '<leader>np', ':.py<CR>')
vim.keymap.set('v', '<leader>np', ':py<CR>')

-- Saving and Quitting
vim.keymap.set('n', '<leader>wq', ':wq<CR>', { desc = '[W]rite and [Q]uit' })
vim.keymap.set('n', '<leader>qq', ':q!<CR>', { desc = '[Q]uit without saving' })
vim.keymap.set('n', '<leader>aa', ':qa!', { desc = '[Q]uit [A]ll without saving' })
vim.keymap.set('n', '<leader>ww', ':w<CR>', { desc = '[W]rite' })
vim.keymap.set('n', '<leader>cc', ':bd!<CR>', { desc = '[C]lear Buffer' })

--[[ Window Managment ]]
--
--  See `:help wincmd` for a list of all window commands

--  Focus windows
--  Use ALT+<hjkl> to switch window focus
vim.keymap.set('n', '<A-H>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<A-L>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<A-J>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<A-K>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Shift windows
--  Use CTRL+<hjkl> to shift window position
vim.keymap.set('n', '<C-h>', '<C-w>H', { desc = 'Move window left' })
vim.keymap.set('n', '<C-l>', '<C-w>L', { desc = 'Move window right' })
vim.keymap.set('n', '<C-j>', '<C-w>J', { desc = 'Move window down' })
vim.keymap.set('n', '<C-k>', '<C-w>K', { desc = 'Move window up' })

-- Resize windows
--
vim.keymap.set('n', '<A-w>', '<C-w>=', { desc = 'Windows Resize Equal' })
vim.keymap.set('n', '<C-<>', '<C-w><', { desc = 'Window Rezize -1' })
vim.keymap.set('n', '<C-S-<>', '<C-w>>', { desc = 'Window Rezize +1' })

-- [[ Tab Management ]]
--
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', { desc = '[T]ab [O]pen' })
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', { desc = '[T]ab [C]lose' })
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', { desc = '[T]ab [N]ext' })
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', { desc = '[T]ab [P]revious' })
vim.keymap.set('n', '<leader>v', ':vnew<CR>', { desc = '[V]ertical [S]plit' })

vim.keymap.set('n', '<A-t>', ':tabnew<CR>', { desc = '[T]ab [O]pen' })
vim.keymap.set('n', '<A-d>', ':tabclose<CR>', { desc = '[T]ab [C]lose' })
vim.keymap.set('n', '<A-.>', ':tabn<CR>', { desc = '[T]ab [N]ext' })
vim.keymap.set('n', '<A-,>', ':tabp<CR>', { desc = '[T]ab [P]revious' })

vim.keymap.set('n', '<A-S-.>', ':tabm +1<CR>', { desc = 'Move Tab Right' })
vim.keymap.set('n', '<A-S-,>', ':tabm -1<CR>', { desc = 'Move Tab Left' })

-- [[ Buffer Management ]]
--
vim.keymap.set('n', '<leader>bc', ':bd!<CR>', { desc = '[B]uffer [C]lose' })

-- [[ Navigation ]]
--
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next result (centered)' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous result (centered)' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Half page down (centered)' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Half page up (centered)' })
vim.keymap.set('n', '<C-f>', '<C-f>zz', { desc = 'Page down (centered)' })
vim.keymap.set('n', '<C-b>', '<C-b>zz', { desc = 'Page up (centered)' })

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
-- vim.keymap.set('t', '<esc><esc>', '<c-\\><c-n>:bd!<CR>', { desc = 'Exit terminal mode and close buffer' })

-- Exit insert mode
vim.keymap.set('i', 'ii', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('i', 'kj', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('i', '<A-Space>', '<Esc>', { desc = 'Exit visual mode' })
vim.keymap.set('v', 'ii', '<Esc>', { desc = 'Exit visual mode' })
vim.keymap.set('v', '<A-Space>', '<Esc>', { desc = 'Exit visual mode' })

vim.keymap.set('c', 'ii', '<Esc><Esc>', { desc = 'Exit command mode' })
vim.keymap.set('c', '<A-Space>', '<Esc>', { desc = 'Exit command mode' })

-- [[ Git ]]
--
vim.keymap.set('n', '<leader>g', ':Git<CR>')

-- Terminal (Trying a new thing)
-- vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>')
-- vim.keymap.set('t', 'ii', '<c-\\><c-n>')

-- Line edit
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { desc = 'move line down' })
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { desc = 'move line up' })

--[[ This will be handled by mini.move ]]
--
-- vim.keymap.set('v', '<A-j>', "<Esc>:m '>+1<CR>gv=gi", { desc = 'move line down' })
-- vim.keymap.set('v', '<A-k>', "<Esc>:m '<-2<CR>gv=gv", { desc = 'move line up' })
-- vim.keymap.set('n', '<A-j>', '<Esc>:m .+1<CR>==:echo("move line down")<CR>', { desc = 'move line down' })
-- vim.keymap.set('n', '<A-k>', '<Esc>:m .-2<CR>==:echo("move line up")<CR>', { desc = 'move line up' })
-- vim.keymap.set('n', '<A-j>', 'ddp', { desc = 'move line down' })
-- vim.keymap.set('n', '<A-k>', 'ddkP', { desc = 'move line up' })

--[[ Disable Arrow Keys ]]
--
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

--[[ File Path ]]
--
-- Copy filepath to clipboard
vim.keymap.set('n', '<leader>yf', ":let @+=expand('%:t')<CR>", { desc = 'yank file name' }) -- yank file name
vim.keymap.set('n', '<leader>yp', ":let @+=expand('%:p')<CR>", { desc = 'yank file path' }) -- yank file path
vim.keymap.set('n', '<leader>yd', ":let @+=expand('%:p:h')<CR>", { desc = 'yank directory path' }) -- yank directory path

--[[ Pastebins ]]
--
vim.keymap.set('n', '<leader>pp', ':!paste-pick -p %<CR>', { desc = 'paste file to paste.c-net.org' }) -- paste.c-net.org
vim.keymap.set('n', '<leader>pt', ':!paste-pick -t %<CR>', { desc = 'paste file to termbin.com' }) -- termbin.com
vim.keymap.set('n', '<leader>pn', ':!paste-pick -z %<CR>', { desc = 'paste file to 0x0.st' }) -- 0x0.st

vim.keymap.set('v', '<leader>pp', ':w !paste-pick -p<CR>', { desc = 'paste lines to paste.c-net.org' }) -- paste.c-net.org
vim.keymap.set('v', '<leader>pt', ':w !paste-pick -t<CR>', { desc = 'paste lines to termbin.com' }) -- termbin.com
vim.keymap.set('v', '<leader>pn', ':w !paste-pick -z<CR>', { desc = 'paste lines to 0x0.st' }) -- 0x0.st

--[[ File Browsing ]]
--
-- Oil Open in floating window w/ preview
--  TODO:
-- Find out what event Oil sends when closing without selecting a file
-- Use that signal to restore the previous buffer before Oil was opened
-- Possible candidates:
-- oil.open()
-- oil.select()
-- oil.close()
-- oil.get_cursor_entry()
vim.keymap.set('n', '<leader>op', function()
  local oil = require 'oil'
  local util = require 'oil.util'
  local file_name = vim.fn.bufname()
  local nil_file = #file_name == 0 and file_name == ''
  local before_open = function()
    print ''
  end

  -- Set before_open based on buffer state
  if nil_file then
    before_open = function()
      vim.cmd 'bd!'
    end
  else
    before_open = function()
      vim.cmd 'tabnew'
    end
  end

  before_open()
  oil.open_float()
  util.run_after_load(0, function()
    oil.open_preview()
  end)
end, { desc = 'Float Oil w/ [P]review' })

-- Oil open and replace
-- vi.keymap.set('n', '<leader>of', '<cmd>Oil<CR>', { desc = 'Open parent directory' })

vim.keymap.set('n', '<leader>od', function()
  local oil = require 'oil'
  local util = require 'oil.util'
  local actions = require 'oil.actions'
  oil.open()
  util.run_after_load(0, function()
    actions.cd '%:h'
  end)
end, { desc = 'Open parent directory with preview' })

vim.keymap.set('n', '<leader>of', function()
  local oil = require 'oil'
  local util = require 'oil.util'
  oil.open()
  util.run_after_load(0, function()
    oil.open_preview()
  end)
end, { desc = 'Open parent directory with preview' })

-- Open oil in split
vim.keymap.set('n', '<leader>os', '<cmd>topleft 35 vs | Oil<cr>', { desc = 'Open oil in split' })

-- TODO:
-- Get current buffer
-- make vsplit max 30%
-- push preview window to current buffer or new tab
-- open selected file in currept buffer

--[[ Vimwiki ]]
--
vim.keymap.set('n', '<leader>wi', ':VimwikiIndex<CR>', { desc = 'Open Vimwiki Index' })
vim.keymap.set('n', '<leader>wt', ':VimwikiTabIndex<CR>', { desc = '[T]ab Open Vimwiki Index' })
vim.keymap.set('n', '<leader>ws', ':VimwikiUISelect<CR>', { desc = 'Vimwiki [S]elect Branch' })
vim.keymap.set('n', '<leader>wd', ':VimwikiDeleteFile<CR>')
vim.keymap.set('n', '<leader>wr', ':VimwikiRenameFile<CR>', { desc = 'Rename Vimwiki File' })
vim.keymap.set('n', '<CR>', ':VimwikiTabDropLink<CR>', { desc = 'Create/Follow Link to Wiki Page' })
vim.keymap.set('n', '<leader>w<leader>w', ':VimwikiMakeDiaryNote<CR>', { desc = 'Open Current Date Diary Entry' })
vim.keymap.set('n', '<leader>w<leader>t', ':VimwikiTabMakeDiaryNote<CR>', { desc = 'Open Current Date Diary Entry' })
vim.keymap.set('n', '<leader>wn', ':VimwikiGoto<CR>', { desc = '[N]ew [W]iki File' })
vim.keymap.set('n', '<leader>w<leader>n', ':VimwikiTabIndex<CR> VimwikiGoto<CR>', { desc = '[N]ew [W]iki File' })

-- Tasks
-- To Do
-- Append current date on open if current date not present
--
vim.keymap.set('n', '<leader>wx', ':50 vs /home/fugue/Documentos/wiki/main/scratch.md<CR>', { desc = 'Open Global Task List' })

--[[ Substitution ]]
--
vim.keymap.set('n', '<leader>rs', ':%s///g<left><left><left>', { desc = '[R]eplace [G]lobal' }) -- substitute
vim.keymap.set('n', '<leader>rc', ':%s///gc<left><left><left><left>', { desc = '[R]eplace Global [C]onfirm' }) -- substitute w/ confirmation

--[[ Markdown Preview ]]
--
vim.keymap.set('n', '<leader>md', ':PeekOpen<CR>')
vim.keymap.set('n', '<leader>mx', ':PeekClose<CR>')

--[[ Spell Check ]]
--
vim.keymap.set('n', '<leader>ce', ':setlocal spell! spelllang=en_US<CR>')
vim.keymap.set('n', '<leader>cs', ':setlocal spelllang=es<CR>')

--
-- [[ CSV.VIM Overwrite ]]
-- vim.g.csv_nomap_space = 1

return {}
