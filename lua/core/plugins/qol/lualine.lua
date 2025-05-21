return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    enabled = false,
    opts = {
      winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'tabs', 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'tabs', 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'windows' },
      },
      -- globalstatus = true,
      -- -- hide = true,
      -- -- restore = { 'laststatus', { global = true } },
      -- sections = {
      --   lualine_a = { 'mode' },
      --   lualine_b = { 'branch', 'diff', 'diagnostics' },
      --   lualine_c = { 'filename' },
      --   lualine_x = { 'encoding', 'fileformat', 'filetype' },
      --   lualine_y = { 'searchcount', 'progress' },
      --   lualine_z = { 'selectioncount', 'location' },
      -- },
    },
  },
}
