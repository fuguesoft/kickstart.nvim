-- disable netrw

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- enable ftplugin

vim.api.ftplugin = true

--optionally enable 24-bit colour
vim.opt.termguicolors = true

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Set wordwrap
vim.opt.wrapmargin = 80
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.expandtab = true
vim.smarttab = false
vim.opt.textwidth = 80
vim.tabstop = 4

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 350

-- Configure how new splits should be opened
vim.opt.splitright = true
-- vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Allow letter increment with 'alpha' option
vim.opt.nrformats = 'bin,hex,alpha'

-- hide buffer when :x is used
vim.opt.hidden = true
vim.opt.bufhidden = 'unload'
vim.opt.laststatus = 3
vim.opt.modeline = true
vim.opt.showtabline = 2

-- vim.opt.guitablabel=%t

-- function MyTabLine()
--   s = ''
--   for i in range(tabpagenr('$'))
--     if i + 1 == tabpagenr()
--       s ..= '%#TabLineSel#'
--     else
--       s ..= '%#TabLine#'
--     end
--
--     " set the tab page number (for mouse clicks)
--     s ..= '%' .. (i + 1) .. 'T'
--
--     " the label is made by MyTabLabel()
--     s ..= ' %{MyTabLabel(' .. (i + 1) .. ')} '
--   end
--
--   " after the last tab fill with TabLineFill and reset tab page nr
--   s ..= '%#TabLineFill#%T'
--
--   " right-align the label to close the current tab page
--   if tabpagenr('$') > 1
--     s ..= '%=%#TabLine#%999Xclose'
--   end
--
--   return s
-- end

return {}
