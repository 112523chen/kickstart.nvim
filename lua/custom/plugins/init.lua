-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'christoomey/vim-tmux-navigator',
    cmd = { 'TmuxNavigateLeft', 'TmuxNavigateDown', 'TmuxNavigateUp', 'TmuxNavigateRight', 'TmuxNavigatePrevious', 'TmuxNavigatorProcessList' },
    keys = {
      { '<C-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<C-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<C-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<C-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<C-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
  {
    'wakatime/vim-wakatime',
    lazy = false,
  },
  {
    'gbakes/dbt-forge.nvim',
    url = 'https://github.com/gbakes/dbt-forge.git',
    config = function()
      require('dbt-forge').setup {
        -- Configuration options here
      }
    end,
    ft = 'sql', -- Load only for SQL files
  },
}
