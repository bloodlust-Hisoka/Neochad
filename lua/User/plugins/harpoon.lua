return {
   'ThePrimeagen/harpoon',
   event = 'VeryLazy',
   --mark,navigate between files,terminals,tmux windows,panes
   config = function()
      vim.keymap.set('n', '<leader>a', function() --keymap to mark current file to harpoon
         require('harpoon.mark').add_file()
      end, { desc = 'add file to harpoon list' })
      vim.keymap.set('n', '<leader>h', function()
         require('harpoon.ui').toggle_quick_menu()
      end, { desc = 'toggle harpoon quickmenu' })
      vim.keymap.set('n', 'h1', function()
         require('harpoon.ui').nav_file(1) -- navigates to file 1
      end, { desc = 'navigates to harpoon file 1 ' })
      vim.keymap.set('n', 'h2', function()
         require('harpoon.ui').nav_file(2) -- navigates to file 2
      end, { desc = 'navigates to harpoon file 2 ' })
      vim.keymap.set('n', 'h3', function()
         require('harpoon.ui').nav_file(3) -- navigates to file 3
      end, { desc = 'navigates to harpoon file 3 ' })
      vim.keymap.set('n', 'h4', function()
         require('harpoon.ui').nav_file(4) -- navigates to file 4
      end, { desc = 'navigates to harpoon file 4 ' })
      vim.keymap.set('n', 'h5', function()
         require('harpoon.ui').nav_file(5) -- navigates to file 5
      end, { desc = 'navigates to harpoon file 5 ' })
   end,
}
