return {
   {
      -- autoclosing html and css tags using treesitter
      'windwp/nvim-ts-autotag',
      event = 'InsertEnter',
      config = function()
         require('nvim-ts-autotag').setup()
      end,
   },
}
