-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
      'echasnovski/mini.pick', -- optional
    },
    config = true,
    vim.keymap.set('n', '<leader>gs', ':Neogit <CR>', { desc = '[g]it [s]tatus', silent = true, noremap = true }),
    vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { desc = '[g]it [b]ranches', silent = true, noremap = true }),
  },
}
