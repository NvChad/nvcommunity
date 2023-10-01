---@type NvPluginSpec
local spec = {
  "nvim-telescope/telescope.nvim",
  dependencies = { "debugloop/telescope-undo.nvim" },
  keys = {
    {
      "<leader>fu",
      "<cmd>Telescope undo<CR>",
      desc = "Find undos",
    },
  },
  init = function()
    require("telescope").load_extension "undo"
    require("core.utils").load_mappings "undo"
  end,
}

require("core.mappings").undo = {
  n = {
    ["<leader>fu"] = { "<CMD>Telescope undo<CR>", "Find undo" },
  },
}

return spec
