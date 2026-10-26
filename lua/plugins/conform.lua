return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre", "BufReadPost" },
    opts = {
      formatters_by_ft = {
        cpp = { "clang-format" },
        c = { "clang-format" },
        -- Set to empty table to disable formatting for markdown
        markdown = { "prettier" },
      },
      formatters = {
        prettier = {
          prepend_args = { "--prose-wrap", "never" },
        },
      },
      -- format_on_save = {
      --   timeout_ms = 3000,
      --   lsp_fallback = true,
      -- },
    },
  },
}
