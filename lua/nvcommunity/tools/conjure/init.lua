---@type NvPluginSpec
local spec = {
  {
    "hrsh7th/nvim-cmp",
    config = function(_, opts)
      table.insert(opts.sources, { name = "conjure" })
      require("cmp").setup(opts)
    end,
    dependencies = {
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
        dependencies = { "PaterJason/cmp-conjure" },
      },
    },
  },
}

return spec
