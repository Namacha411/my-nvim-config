return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {
      "BufReadPost",
      "BufNewFile",
      "BufWritePre",
      "VeryLazy",
    },
    dependencies = {
      { "nvim-treesitter/nvim-treesitter-textobjects" },
    }
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = {
      "BufReadPost",
      "BufNewFile",
      "BufWritePre",
    }
  }
}
