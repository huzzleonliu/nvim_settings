return {
  {  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
},
{
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "clangd",
        "tsserver",
      --add language server here
      }
    })
  end
},
{
  "neovim/nvim-lspconfig",
  config = function()
  local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({})
lspconfig.clangd.setup({})
lspconfig.tsserver.setup({})
--add language server here


--快捷键
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set({ "n", "v" }, "<leader>nm", vim.lsp.buf.code_action, {})
end


}
}
-- Link for language list
-- https://github.com/williamboman/mason-lspconfig.nvim
