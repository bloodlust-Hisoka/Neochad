return {

   {
      -- fuzzyfinder
      'nvim-telescope/telescope.nvim',
      tag = '0.1.5',
      -- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      event = 'VeryLazy',
      config = function()
         require('telescope').setup {
            defaults = {
               -- Default configuration for telescope goes here:
               -- config_key = value,
               -- ..
            },
            pickers = {
               colorscheme = {
                  enable_preview = true,
               },
               -- Default configuration for builtin pickers goes here:
               -- picker_name = {
               --   picker_config_key = value,
               --   ...
               -- }
               -- Now the picker_config_key will be applied every time you call this
               -- builtin picker
               find_files = {
                  theme = 'ivy',
               },
            },
            extensions = {
               -- Your extension configuration goes here:
               -- extension_name = {
               --   extension_config_key = value,
               -- }
               -- please take a look at the readme of the extension you want to configure
               file_browser = {
                  theme = 'ivy',
                  hijack_netrw = true,
               },
            },
         }

         local builtin = require 'telescope.builtin'
         vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'find files' })
         vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'live grep search' })
         vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'find buffers' })
         vim.keymap.set('n', '<leader>fp', builtin.planets, { desc = 'find planets' })
         vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'find recentfiles' })
         vim.keymap.set('n', '<leader>th', builtin.colorscheme, { desc = 'change theme' })
         require('telescope').load_extension 'file_browser'
      end,
   },
   {
      'nvim-telescope/telescope-file-browser.nvim',
      dependencies = {

         'nvim-telescope/telescope.nvim',
         'nvim-tree/nvim-web-devicons',
      },
      config = function()
         vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<Cr>', { desc = 'Toggle telescope file browser ' })
      end,
   },
}
