return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  config = function()
    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    ls.setup()
    ls.add_snippets("rust", {
      s("atcoder", {
        t({
          "#![allow(non_snake_case)]",
          "use proconio::input;",
          "",
          "fn main() {",
          "    input! {",
          "        ",
        }),
        i(0),
        t({
          "",
          "    }",
          "}",
        }),
      })
    })
  end
}
