---@type NvPluginSpec
local spec = {
  {
      "hrsh7th/nvim-cmp",
      config = function(_, opts)
          table.insert(opts.sources, { name = "codeium" })
          require("cmp").setup(opts)
      end,
      dependencies = {
          {
              "jcdickinson/codeium.nvim",
              config = function()
                  require("codeium").setup({})
              end,
          },
      },
  },
}

return spec