return {
   -- treesitter
   'nvim-treesitter/nvim-treesitter',
   build = 'TSUpdate',
   dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
   event = {
      'BufReadPost',
      'BufEnter',
   },
   config = function()
      require('nvim-treesitter.configs').setup {
         -- A list of parser names, or "all" (the five listed parsers should always be installed)
         ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'typescript', 'html', 'elixir', 'python' },

         -- Install parsers synchronously (only applied to `ensure_installed`)
         sync_install = false,

         -- Automatically install missing parsers when entering buffer
         -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally

         -- List of parsers to ignore installing (or "all")
         ignore_install = { 'javascript' },

         highlight = {
            enable = true,

            additional_vim_regex_highlighting = false,
         },
      }
   end,
}
