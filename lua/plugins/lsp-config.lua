return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
    --  config = function()
    --    require("mason-lspconfig").setup({
    --      ensure_installed = {
    --        "lua_ls",
    --        "clangd",
    --        "tsserver",
    --        "html",
    --        --add language server here
    --      }
    --    })
    --  end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.clangd.setup({
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      --add language server here


      --快捷键
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>nj", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>nm", vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>nk', vim.lsp.buf.references, {})
    end


  },
}
-- Link for language list
-- https://github.com/williamboman/mason-lspconfig.nvim
