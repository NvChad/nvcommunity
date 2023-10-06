---@type NvPluginSpec
local spec = {
  {
    "rainbowhxch/beacon.nvim",
    event = "CursorMoved",
    cond = function()
      -- Don't load in neovide
      return not vim.g.neovide
    end,
  },
}

return spec
