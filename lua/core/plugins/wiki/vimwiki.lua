function get_xdg_dir(dirname)
  dirname = string.upper(dirname)
  local handle = io.popen(string.format('xdg-user-dir %s', dirname))
  local result = handle:read '*a'
  handle:close()
  return result:match '^%s*(.-)%s*$'
end

local docs = get_xdg_dir 'documents'
return {
  'vimwiki/vimwiki',
  enabled = true,
  init = function()
    vim.g.vimwiki_list = {
      {
        path = string.format('%s/wiki/main/', docs),
        syntax = 'markdown',
        nested_syntaxes = {
          bash = 'bash',
          cpp = 'cpp',
          fish = 'fish',
          lua = 'lua',
          python = 'python',
          sh = 'sh',
          vifm = 'vimscript',
        },
        ext = 'md',
        links_space_char = '_',
      },
      {
        path = string.format('%s/wiki/farm/', docs),
        syntax = 'markdown',
        nested_syntaxes = {
          bash = 'bash',
          cpp = 'cpp',
          fish = 'fish',
          lua = 'lua',
          python = 'python',
          sh = 'sh',
          vifm = 'vimscript',
        },
        ext = 'md',
        links_space_char = '_',
      },
      {
        path = string.format('%s/wiki/r-ableton/', docs),
        syntax = 'markdown',
        nested_syntaxes = {
          bash = 'bash',
          cpp = 'cpp',
          fish = 'fish',
          lua = 'lua',
          python = 'python',
          sh = 'sh',
          vifm = 'vimscript',
        },
        ext = 'md',
        links_space_char = '_',
      },
      {
        path = '/home/fugue/',
        syntax = 'markdown',
        nested_syntaxes = {
          bash = 'bash',
          cpp = 'cpp',
          fish = 'fish',
          lua = 'lua',
          man = 'sh',
          python = 'python',
          sh = 'sh',
          tin = 'tin',
          vifm = 'vimscript',
        },
        ext = 'md',
        links_space_char = '_',
      },
    }
    vim.g.vimwiki_global_ext = 0
    -- vim.g.vimwiki_ext2syntax = {}
    vim.g.vimwiki_filetypes = { 'markdown' }
    -- vim.g.vimwiki_markdown_link_ext = 1
    vim.g.vimwiki_auto_header = 1
    vim.g.vimwiki_listsyms = '.·oOX'
    keys = {
      vim.keymap.set('n', '<leader>wi', ':VimwikiIndex<CR>'),
      vim.keymap.set('n', '<leader>wt', ':VimwikiTabIndex<CR>'),
      vim.keymap.set('n', '<leader>ws', ':VimwikiUISelect<CR>'),
      vim.keymap.set('n', '<leader>wx', ':VimwikiDeleteFile<CR>'),
      vim.keymap.set('n', '<leader>wr', ':VimwikiRenameFile<CR>'),
      vim.keymap.set('n', '<CR>', ':VimwikiTabDropLink<CR>'),
      vim.keymap.set('n', '<leader>wo', ':VimwikiGoTo<CR>', { desc = '[N]ew [W]iki File' }),
    }
  end,
}
