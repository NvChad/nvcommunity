---@type NvPluginSpec
local spec = {
  {
    "anuvyklack/fold-preview.nvim",
    opts = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
    init = function()
      require("core.utils").load_mappings "foldpreview"
    end,
  },
}

require("core.mappings").foldpreview = {
  n = {
    ["<leader>a"] = {
      function()
        require("fold-preview").toggle_preview()
      end,
      "Fold preview",
    },
  },
}

return spec
