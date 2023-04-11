require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'clangd',
    'dockerls',
    'eslint',
    'elmls',
    'gopls',
    'golangci_lint_ls',
    'graphql',
    'jsonls',
    'marksman',
    'pyright',
    'rust_analyzer',
    'stylelint_lsp',
    'taplo',
    'tailwindcss',
    'tsserver',
    'yamlls',
    'phpactor'
  },
})
