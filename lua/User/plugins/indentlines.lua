return {
   --add indentation lines
   'lukas-reineke/indent-blankline.nvim',
   main = 'ibl',
   event = 'VeryLazy',
   opts = {
      debounce = 100,
      --uncomment and change char to whatever you like
      --      indent = { char = '|' },
      whitespace = { highlight = { 'Whitespace', 'NonText' } },
      scope = { exclude = { language = { 'lua' } } },
   },
}
