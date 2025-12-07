-- Pyright LSP configuration using the new vim.lsp API
local pyright_config = vim.lsp.config('pyright', {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipfile', '.git' },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      }
    }
  }
})

-- Auto-start pyright for Python files
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function(args)
    vim.lsp.enable('pyright')
    
    -- Set up keymaps after LSP attaches
    vim.api.nvim_create_autocmd('LspAttach', {
      buffer = args.buf,
      callback = function(event)
        local opts = { buffer = event.buf, noremap = true, silent = true }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        
        -- Format on save
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = event.buf,
          callback = function()
            vim.lsp.buf.format({ async = false })
          end,
        })
      end,
    })
  end,
})
