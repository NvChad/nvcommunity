---@type NvPluginSpec
local spec = {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "debugloop/telescope-undo.nvim",
      init = function()
        require("core.mappings").undo = {
          plugin = true,
          n = {
            ["<leader>fu"] = { "<CMD>Telescope undo<CR>", "Find undo" },
          },
        }

        require("core.utils").load_mappings "undo"
        require("telescope").load_extension "undo"
      end,
    },
  },
}

return spec
