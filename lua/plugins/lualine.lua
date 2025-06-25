return {
  'nvim-lualine/lualine.nvim',
  event = "VeryLazy",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  main = "lualine",
  opts = {
    options = {
      globalstatus = true
    },
    sections = {
      lualine_x = {
        require("ccusage").get_lualine_component(),
      }
    }
  },
}
