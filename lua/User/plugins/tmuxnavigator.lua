return {
   'christoomey/vim-tmux-navigator',
   event = 'VeryLazy',
   keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>', desc = 'Navigate to left split or pane' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>', desc = 'Navigate to down split or pane' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>', desc = 'Navigate to up split or pane' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>', desc = 'Navigate to right split or pane' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>', desc = 'Navigate to previous split or pane' },
   },
}
