---@type NvPluginSpec
local spec = {
  {
    "kevinhwang91/nvim-fundo",
    event = "VeryLazy",
    opts = {},
    build = function()
      require("fundo").install()
    end,
  },
}

return spec
