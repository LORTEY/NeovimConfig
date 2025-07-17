local path = "~/.local/share/nvim/mason/packages/kotlin-debug-adapter/adapter/bin/kotlin-debug-adapter"
require("kotlin-debug-adapter").setup(path)

--local map = vim.keymap.set

--map("n", "<leader>dpr", function()
--require("kotlin-debug-adapter").test_method()
--end, { desc = "Run kotlin dap test method" })
