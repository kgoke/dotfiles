return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },

  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "",
      desc = "[F]ormat buffer",
    },
  },

  opts = {
    notify_on_error = false,

    -- REMOVE the disable for cpp
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },

    formatters_by_ft = {
      lua = { "stylua" },

      -- 👉 THIS IS WHAT YOU WERE MISSING
      cpp = { "clang_format" },
      c   = { "clang_format" },
    },
  },
}

