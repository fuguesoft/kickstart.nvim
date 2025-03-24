return {
  -- https://github.com/mfussenegger/nvim-lint
  'mfussenegger/nvim-lint',
  enabled = true,
  event = 'BufWritePost',
  config = function()
    -- Define a table of linters for each filetype (not extension).
    -- Additional linters can be found here:
    require('lint').linters_by_ft = {
      python = {
        -- Uncomment whichever linters you prefer
        'flake8',
        'mypy',
        'pylint',
      },
    }
    vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
      -- Only run the following extenstions. Remove this to always...
      pattern = { '*.py' },
      callback = function()
        require('lint').try_lint()
      end,
    })
  end,
}
