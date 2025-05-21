return {
  'LukasPietzschmann/telescope-tabs',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  enabled = false,
  config = function()
    require('telescope').load_extension 'telescope-tabs'
    require('telescope-tabs').setup {
      -- Your custom config :^)
      entry_formatter = function(tab_id, buffer_ids, file_names, file_paths, is_current)
        local entry_string = table.concat(file_names, ', ')
        return string.format('%d: %s%s', tab_id, entry_string, is_current and ' <' or '')
      end,
      entry_ordinal = function(tab_id, buffer_ids, file_names, file_paths, is_current)
        return table.concat(file_names, ' ')
      end,
      show_preview = true,
      close_tab_shortcut_i = '<C-d>',
      close_tab_shortcut_n = 'D',
    }
  end,
}
