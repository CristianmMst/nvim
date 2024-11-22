return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<c-ñ>",
        function()
          Snacks.terminal()
        end,
        desc = "Toggle Terminal",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {
          "node_modules",
        },
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
  },
  {
    "nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
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
        "emmet-language-server",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "lua",
        "css",
        "html",
        "json",
      },
    },
  },
}
