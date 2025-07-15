local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    css = { "prettier" },
    html = { "prettier" },
    --kotlin = { "ktlint" }, --lsp worked better
  },
  formatters = {
    -- Python
    black = {
      prepend_args = {
        "--fast",
        "--line-length",
        "80",
      },
    },
    isort = {
      prepend_args = {
        "--profile",
        "black",
      },
    },
    --C/C++
    ["clang-format"] = {
      prepend_args = {
        "-style={ \
                IndentWidth: 4, \
                TabWidth: 4, \
                UseTab: Never, \
                AccessModifierOffset: 0, \
                IndentAccessModifiers: true, \
                PackConstructorInitializers: Never}",
      },
    },
    --kotlin
    --ktlint = {
    --command = "ktlint", -- Ensure this is in your PATH
    --args = { "--stdin", "--format" }, -- Format in-place
    --stdin = true,
    --},
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 5000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
