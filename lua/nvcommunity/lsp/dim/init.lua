---@type NvPluginSpec
local spec = {
  {
    "0oAstro/dim.lua",
    event = "LspAttach",
    config = function()
      require("dim").setup {}
    end,
  },
}

return spec
