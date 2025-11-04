return {
  {
    "folke/tokyonight.nvim", -- Or any other colorscheme that supports Pywal
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("tokyonight") -- Fallback if Pywal fails
    end,
  },
  {
    "AlphaTechnolog/pywal.nvim", -- Pywal integration for Neovim
    lazy = false,
    priority = 1000,
    config = function()
      require("pywal").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("configs.treesitter")
    end,
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require("configs.conform"),
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require("configs.lspconfig")
    end,
  },
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    dependencies = { "mason.nvim", "nvim-lspconfig" },
    config = function()
      require("configs.lsp.mason-lspconfig")
    end,
  },

  {
    "mfussenegger/nvim-dap",
    dependencies = { "mason.nvim" },
    config = function()
      require("configs.dap.dap")
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    config = function()
      require("configs.dap.mason-dap")
    end,
  },

  {
    "nvim-neotest/nvim-nio",
  },

  {
    "zapling/mason-conform.nvim",
    event = "VeryLazy",
    dependencies = { "conform.nvim", "mason.nvim" },
    config = function()
      require("configs.conform.mason-conform-nvim")
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      --require("dapui").setup()
      require("configs.dap.dap-ui")
    end,
  },
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
