---@type NvPluginSpec
local spec = {
  {
    "karb94/neoscroll.nvim",
    keys = { "<C-d>", "<C-u>" },
    opts = { mappings = {
      "<C-u>",
      "<C-d>",
    } },
  },
}

return spec
