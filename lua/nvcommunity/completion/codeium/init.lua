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
      if not opts.sources then
        opts.sources = {}
      end
      table.insert(opts.sources, { name = "codeium" })
    end,
  },
}

return spec
