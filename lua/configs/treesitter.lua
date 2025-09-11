--syntax highlight
local options = {
  ensure_installed = {
    "asm",
    "bash",
    "fish",
    "lua",
    "luadoc",
    "markdown",
    "printf",
    "toml",
    "java",
    "vim",
    "vimdoc",
    "yaml",
    "python",
    "c",
    "cmake",
    "cpp",
    "make",
    "kotlin",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
