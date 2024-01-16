return {
   -- adding,changing,deleting surroundings
   'kylechui/nvim-surround',
   version = '*', -- Use for stability; omit to use `main` branch for the latest features
   event = { 'BufReadPre', 'BufEnter', 'BufNewFile' },
   config = function()
      require('nvim-surround').setup {
         -- Configuration here, or leave empty to use defaults
      }
   end,
}
