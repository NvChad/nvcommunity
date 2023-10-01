---@type NvPluginSpec
local spec = {
  {
    "jghauser/fold-cycle.nvim",
    opts = {},
    init = function()
      require("core.utils").load_mappings "foldclycle"
    end,
  },
}

require("core.mappings").foldcycle = {
  n = {
    ["<leader>a"] = {
      function()
        require("fold-cycle").toggle_all()
      end,
      "Toggle fold",
    },
  },
}

return spec
