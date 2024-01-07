---@type NvPluginSpec
local spec = {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "natecraddock/telescope-zf-native.nvim",
      },
    },
    opts = {
      extensions_list = { "zf-native" },
    },
  },
}
return spec
