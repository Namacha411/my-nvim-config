return {
  "j-hui/fidget.nvim",
  main = "fidget",
  event = {
    "BufReadPost",
    "BufNewFile",
    "BufWritePre",
  },
  opts = {
    notification = {
      window = {
        winblend = 0,
      }
    }
  },
}
