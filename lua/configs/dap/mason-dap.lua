local dap = require "dap"

require("mason-nvim-dap").setup {
  automatic_setup = true,
  ensure_installed = { "codelldb" },
  handlers = {
    function(config)
      -- all sources with no handler get passed here
      require("mason-nvim-dap").default_setup(config)
    end,
    codelldb = function(config)
      -- Correct way to set up the adapter
      config.adapters = {
        type = "server",
        port = "${port}",
        executable = {
          command = vim.fn.stdpath "data" .. "/mason/bin/codelldb",
          args = { "--port", "${port}" },
        },
      }
      require("mason-nvim-dap").default_setup(config)
    end,
  },
} -- Set configurations OUTSIDE the mason-nvim-dap handler
dap.configurations.c = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      local default_executable = vim.fn.expand "%:p:r"
      local user_input = vim.fn.input("Path to executable: ", default_executable, "file")
      return user_input ~= "" and user_input or default_executable
    end,
    cwd = "${workspaceFolder}",
    terminal = "integrated",
    stopOnEntry = false,
  },
}

dap.configurations.cpp = dap.configurations.c
