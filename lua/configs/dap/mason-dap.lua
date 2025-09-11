local dap = require "dap"
local mason_registry = require "mason-registry"
local codelldb = mason_registry.get_package "codelldb"
local codelldb_path = codelldb:get_install_path() .. "/extension/adapter/codelldb"
require("mason-nvim-dap").setup {
  automatic_setup = true,
  ensure_installed = { "codelldb" },
  handlers = {

    function(config)
      -- all sources with no handler get passed here

      -- Keep original functionality
      require("mason-nvim-dap").default_setup(config)
    end,
    c = function(config)
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
  }
      require("mason-nvim-dap").default_setup(config) -- don't forget this!
    end,
  },
}

-- Set configurations OUTSIDE the mason-nvim-dap handler
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

-- Also set for C++ and Rust if needed
dap.configurations.cpp = dap.configurations.c
dap.configurations.rust = dap.configurations.c
