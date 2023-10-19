---@type NvPluginSpec
local spec = {
  {
    "andweeb/presence.nvim",
    event = "VimEnter",
    config = function()
      require("presence").setup {}
    end,
  },
}

return spec
