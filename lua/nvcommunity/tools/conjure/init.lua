---@type NvPluginSpec
local spec = {
  {
    "Olical/conjure",
    ft = { "clojure", "fennel", "python", "janet", "hy", "scheme", "guile", "lisp", "julia", "rust", "lua" },
    opts = {},
    config = function()
      require("conjure.main").main()
      require("conjure.mapping")["on-filetype"]()
    end,
  },
}

return spec
