---@type NvPluginSpec
local spec = {
    {
      "m-demare/hlargs.nvim",
      event = "BufWinEnter",
      config = function()
        require("hlargs").setup {
          hl_priority = 200,
        }
      end,
    },
  }
  
  return spec
  