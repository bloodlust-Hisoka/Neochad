return {
   -- bufferline
   'akinsho/bufferline.nvim',
   dependencies = { 'nvim-tree/nvim-web-devicons' },
   event = 'VeryLazy',
   version = '*',
   config = function()
      vim.keymap.set('n', '<leader>cb', ':BufferLinePick<Cr>', { desc = 'Change buffer' })
      vim.keymap.set('n', '<leader>db', ':BufferLinePickClose<Cr>', { desc = 'Close buffer' })
      require('bufferline').setup {
         options = {
            indicator_icon = '▎',
            modified_icon = '●',
            buffer_close_icon = '',
            close_icon = '',
            left_trunc_marker = '',
            right_trunc_marker = '',
            numbers = 'ordinal',
            max_name_length = 15,
            max_prefix_length = 6,
            diagnostics = 'nvim_lsp',
            show_buffer_icons = true,
            show_buffer_close_icons = false,
            show_close_icon = false,
            persist_buffer_sort = true,
            enforce_regular_tabs = true,
            diagnostics_indicator = function(count, level)
               local icon = level:match 'error' and '' or ''
               return icon .. count
            end,
         },

         highlights = {
            buffer_selected = { italic = false },
            diagnostic_selected = { italic = false },
            hint_selected = { italic = false },
            pick_selected = { italic = false },
            pick_visible = { italic = false },
            pick = { italic = false },
         },
      }
   end,
}
