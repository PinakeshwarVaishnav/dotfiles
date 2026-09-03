return {
  'folke/zen-mode.nvim',
  opts = {
    window = {
      backdrop = 0.95,
      width = 0.85, -- Optimized for 13-16" laptop screens
      height = 1,
      options = {
        signcolumn = 'no', -- Saves horizontal space
        number = false,
        relativenumber = false,
        cursorline = false,
        foldcolumn = '0',
      },
    },
    plugins = {
      options = {
        enabled = true,
        ruler = false,
        showcmd = false,
        laststatus = 0, -- Saves vertical pixels
      },
      twilight = { enabled = true }, -- Dims code, ideal for small screens
      gitsigns = { enabled = false },
      tmux = { enabled = false },
    },
  },
  keys = {
    { '<leader>z', '<cmd>ZenMode<cr>', desc = 'Toggle Zen Mode (Neck Health)' },
  },
}
