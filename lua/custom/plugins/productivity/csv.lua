return {
  { -- Plugin for "handling" .csv files, not for creating apparently
    'chrisbra/csv.vim',
    ft = { 'csv', 'tsv' },
    config = function() end,
    opts = {
      delimiter = ',',
    },
  },
}
