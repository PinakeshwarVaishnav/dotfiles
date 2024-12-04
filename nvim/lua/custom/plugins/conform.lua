return {
  -- Conform.nvim for code formatting
  'stevearc/conform.nvim',
  dependencies = { 'nvim-lspconfig', 'mason.nvim' },
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
        lua = { 'stylua' },
        python = { 'black', 'isort' },
      },
    }

    -- Set up auto-formatting on save
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = '*',
      callback = function(args)
        require('conform').format { bufnr = args.buf }
      end,
    })
  end,
}
