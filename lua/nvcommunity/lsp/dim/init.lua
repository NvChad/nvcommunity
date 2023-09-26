---@type NvPluginSpec
local spec = {
  {
    "narutoxy/dim.lua",
    event = "LspAttach",
    config = function()
      require("dim").setup {}
    end,
  },
}

return spec
