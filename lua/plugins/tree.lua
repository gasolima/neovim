return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["<space>"] = "none",
          ["<tab>"] = { "toggle_preview", config = { use_float = false } },
          ["l"] = { "open" },
          ["h"] = { "close_node" },
        },
      },
    },
  },
}
