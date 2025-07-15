require("mason-nvim-dap").setup({
  ensure_installed = { "python", "codelldb", "kotlin" },
  automatic_installation = { exclude = {} },
})
