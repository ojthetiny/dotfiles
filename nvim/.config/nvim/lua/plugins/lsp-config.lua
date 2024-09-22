return {
   {
      "williamboman/mason.nvim",
      config = function()
         require ("mason").setup()
      end
   },   

   {
      "williamboman/mason-lspconfig",
      config = function()
         require("mason-lspconfig").setup ({
            ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "pylsp", "cmake", "jsonls" }   
         })
      end
   },

   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require("lspconfig")
         lspconfig.lua_ls.setup({})
         lspconfig.rust_analyzer.setup({})
         lspconfig.clangd.setup({})
         lspconfig.cmake.setup({})
         lspconfig.pylsp.setup({})
         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
         vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
      end
   }
}

