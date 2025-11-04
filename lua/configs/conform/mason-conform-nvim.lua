require("mason-conform").setup({
  ensure_installed = { "black", "isort", "stylua" },
})
require("conform").setup({

  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
})
