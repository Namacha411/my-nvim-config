return {
  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    event = {
      "BufReadPost",
      "BufNewFile",
      "BufWritePre",
    },
    dependencies = {
      -- mason
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      -- cmp
      'saghen/blink.cmp',
    },
    config = function(_, opts)
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local lspconfig = require('lspconfig')

      mason.setup()
      mason_lspconfig.setup()
      mason_lspconfig.setup_handlers({
        function(server)
          lspconfig[server].setup({
            capabilities = require('blink.cmp').get_lsp_capabilities({})
          })
        end
      })
    end,
  },
}
