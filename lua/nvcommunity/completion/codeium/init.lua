---@type NvPluginSpec
local spec = {
  {
    "jcdickinson/codeium.nvim",
    opts = {},
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "jcdickinson/codeium.nvim" },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "codeium" })
      return opts
    end,
    config = function()
      local opts = require "plugins.configs.cmp"
      table.insert(opts.sources, { name = "codeium" })
      require("cmp").setup(opts)
    end,
  },
}

return spec
