return { -- auto-close and auto-rename tags
  'windwp/nvim-ts-autotag',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('nvim-ts-autotag').setup {
      enable = true,
    }
  end,
}
