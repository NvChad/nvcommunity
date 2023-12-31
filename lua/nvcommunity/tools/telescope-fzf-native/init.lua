---@type NvPluginSpec
local spec = {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
    opts = {
      extensions_list = { "fzf" },
    },
  },
}
return spec
