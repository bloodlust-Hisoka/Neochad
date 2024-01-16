return {
   -- undotree
   'mbbill/undotree',
   event = { 'BufReadPre', 'BufEnter', 'BufNewFile' },
   config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle undotree' })
   end,
}
