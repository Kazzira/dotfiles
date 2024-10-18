local Z = {}

function Z.run(servers, on_attach)
  require('mason').setup()

  -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

  local mason_lspconfig = require 'mason-lspconfig'
  local lspconfig = require 'lspconfig'
  lspconfig.eslint.setup {}

  mason_lspconfig.setup {
    ensure_installed = vim.tbl_keys(servers),
  }

  mason_lspconfig.setup_handlers {
    function(server_name)
      require('lspconfig')[server_name].setup {
        capabilities = capabilities,
        on_attach = on_attach,
        settings = servers[server_name],
        filetypes = (servers[server_name] or {}).filetypes,
      }
    end,
  }
  lspconfig.rust_analyzer.setup {
    capabilities = capabilities
  }
end

require('mason-null-ls').setup({
  ensure_installed = {
    'clangd',
    'cpplint',
    'cpptools',
    'gitui',
    'lua-language-server',
    'markdownlint',
    'markdownlint-cli2',
    'mypy',
    'pylint',
    'pyment',
    'python-lsp-server',
    'rust-analyzer',
    'sqls',
    'vim-language-server',
    'yaml-language-server',
    'clang-format',
    'cmakelang',

  },
  automatic_installation = true,
  handlers = {},
})

return Z

