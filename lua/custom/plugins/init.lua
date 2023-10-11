-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'theprimeagen/harpoon',
    config = function()
      local mark = require('harpoon.mark')
      local ui = require('harpoon.ui')

      vim.keymap.set('n', '<leader>ha', mark.add_file, { desc = 'Harpoon add file' })
      vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Harpoon quick menu' })

      vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end, { desc = 'Harpoon file 1' })
      vim.keymap.set('n', '<C-t>', function() ui.nav_file(2) end, { desc = 'Harpoon file 2' })
      vim.keymap.set('n', '<C-n>', function() ui.nav_file(3) end, { desc = 'Harpoon file 3' })
      vim.keymap.set('n', '<C-s>', function() ui.nav_file(4) end, { desc = 'Harpoon file 4' })
    end,
  },
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = '[U]ndotree' })
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      multiline_threshold = 1,
    },
  },
}
