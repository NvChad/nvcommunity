---@type NvPluginSpec
local spec = {
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
    config = function()
      require("presence").setup {}
    end,
  },
}

return spec
