---@type NvPluginSpec
local spec = {
  {
    "stevearc/oil.nvim",
    opts = {},
    lazy = false,
    cmd = "Oil",
    keys = {
      {
        "<leader>fl",
        function()
          require("oil").open()
        end,
        desc = "Open parent directory",
      },
    },
  },
}
return spec
