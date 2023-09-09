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
