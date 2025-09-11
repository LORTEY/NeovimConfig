local lsp_list = require("configs.lsp.lsplist")
require("mason-lspconfig").setup({
        ensure_installed = { "rust_analyzer", "lua_ls","kotlin_lsp","clangd"}
    })

