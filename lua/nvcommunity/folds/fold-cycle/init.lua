---@type NvPluginSpec
local spec = {
  {
    "jghauser/fold-cycle.nvim",
    opts = {},
    init = function()
      local map = vim.keymap.set

      map("n", "<leader>a", function()
        require("fold-cycle").toggle_all()
      end, { desc = "Toggle fold" })
    end,
  },
}

return spec
