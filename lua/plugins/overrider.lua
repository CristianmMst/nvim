return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "pint")
      table.insert(opts.ensure_installed, "autopep8")
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.formatting.pint)
      table.insert(opts.sources, nls.builtins.formatting.autopep8)
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["php"] = { "pint" },
        ["python"] = { "autopep8" },
      },
    },
  },
  {
    "LazyVim/Lazyvim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>e", false },
      { "<leader>E", false },
      { "<leader>fE", false },
      { "<leader>n", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
    },
    opts = {
      window = {
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
          ["<space>"] = "none",
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "css-lsp",
        "html-lsp",
        "prettierd",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "lua",
        "tsx",
        "css",
        "html",
        "json",
        "javascript",
        "typescript",
      },
    },
  },
}
