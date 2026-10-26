return {
  -- Markdown rendering configuration
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      code = {
        sign = false,
        width = "block",
        right_pad = 1,
      },
      heading = {
        sign = false,
        icons = {},
      },
      checkbox = {
        enabled = false,
      },
      pipe_table = {
        preset = "round",
        style = "full",
        cell = "padded",
        padding = 1,
        min_width = 0,
      },
      anti_conceal = {
        ignore = {
          table_border = true,
        },
      },
      win_options = {
        wrap = {
          default = false,
          rendered = false,
        },
      },
    },
  },

  -- Markdown linting: pass global config to markdownlint-cli2 to disable MD013 (line length)
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = {
            "--config",
            vim.fn.expand("~/.markdownlint-cli2.jsonc"),
            "-",
          },
        },
      },
    },
  },

  -- Formatting: ensure markdownlint-cli2 uses the same config when formatting/fixing
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        ["markdownlint-cli2"] = {
          prepend_args = { "--config", vim.fn.expand("~/.markdownlint-cli2.jsonc") },
        },
      },
    },
  },
}
