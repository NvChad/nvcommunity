---@type NvPluginSpec
local spec = {
  {
    "Olical/conjure",
    ft = {
      "clojure",
      "fennel",
      "janet",
      "hy",
      "julia",
      "racket",
      "scheme",
      "lua",
      "lisp",
      "python",
      "rust",
      "sql",
    },
    opts = {},
    config = function()
      require("conjure.main").main()
      require("conjure.mapping")["on-filetype"]()
    end,
  },
}

return spec
