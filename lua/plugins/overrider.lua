return {
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
        "phpstan",
        "css-lsp",
        "html-lsp",
        "prettierd",
        "intelephense",
        "php-cs-fixer",
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
        "php",
        "css",
        "html",
        "json",
        "javascript",
        "typescript",
      },
    },
  },
}
