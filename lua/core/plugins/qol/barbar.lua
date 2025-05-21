return {
  { -- bufferline/tabline w/ some cool features
    'romgrk/barbar.nvim',
    enabled = false,
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      keymaps = {
        -- Move to previous/next
        vim.keymap.set('n', '<A-:>', ':tabn<CR>'),
        vim.keymap.set('n', '<A-;>', ':tabp<CR>'),

        -- Magic buffer-picking mode
        vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>'),
        -- Sort automatically by...
        vim.keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>'),
        vim.keymap.set('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>'),
        vim.keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>'),
        vim.keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>'),
        vim.keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>'),
      },
      hide = {
        buffers = true,

        -- buffers = { inactive = true },
      },

      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    -- version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
