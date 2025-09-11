local dap = require("dap")
local dapui = require("dapui")
dapui.setup()

local map = vim.keymap.set
map("n", "<leader>du", "<cmd>lua require('dapui').toggle()<CR>", { desc = "Toggle DAP UI" })

dap.listeners.after.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.after.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  --dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  --dapui.close()
end
vim.keymap.set("n", "<F5>", function()
  dap.continue()
end)
vim.keymap.set("n", "<Leader>dc", function()
  dapui.close()
end, { desc = "Close DAP UI" })
vim.keymap.set("n", "<Leader>do", function()
  dapui.open()
end, { desc = "Open DAP UI" })
vim.keymap.set("n", "<Leader>dt", function()
  dap.terminate()
end, { desc = "Terminate debug session" })
