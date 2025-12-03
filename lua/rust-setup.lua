vim.g.rustaceanvim = {
  server = {
    on_attach = function(client, bufnr)
      -- Enable format on save
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
      
      -- Key mappings
      local opts = { buffer = bufnr, noremap = true, silent = true }
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end,
    settings = {
      ['rust-analyzer'] = {
        cargo = {
          allFeatures = true,
        },
        check = {
          command = "clippy",
        },
      },
    },
  },
}
