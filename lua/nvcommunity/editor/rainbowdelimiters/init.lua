---@type NvPluginSpec
local spec = {
    {
      "hiphish/rainbow-delimiters.nvim",
      event = "BufReadPost",
      init = function()
        local ext = require("custom.chadrc").ui.extended_integrations or {}
        table.insert(ext, "rainbowdelimiters")
        require("custom.chadrc").ui.extended_integrations = ext
        require("base46").load_all_highlights()
        dofile(vim.g.base46_cache .. "rainbowdelimiters")
      end,
      config = function()
        local rainbow_delimiters = require "rainbow-delimiters"
  
        vim.g.rainbow_delimiters = {
          strategy = {
            [""] = rainbow_delimiters.strategy["global"],
            vim = rainbow_delimiters.strategy["local"],
          },
          query = {
            [""] = "rainbow-delimiters",
            lua = "rainbow-blocks",
          },
          highlight = {
            "RainbowDelimiterRed",
            "RainbowDelimiterYellow",
            "RainbowDelimiterBlue",
            "RainbowDelimiterOrange",
            "RainbowDelimiterGreen",
            "RainbowDelimiterViolet",
            "RainbowDelimiterCyan",
          },
        }
      end,
    },
  }
  
  return spec
  