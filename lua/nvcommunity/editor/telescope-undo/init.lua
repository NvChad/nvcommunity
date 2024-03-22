---@type NvPluginSpec
local spec = {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "debugloop/telescope-undo.nvim",
      config = function()
        local map = vim.keymap.set
        map("n", "<leader>fu", "<CMD>Telescope undo<CR>", { desc = "Find undo" })

        require("telescope").load_extension "undo"
      end,
    },
  },
}

return spec
