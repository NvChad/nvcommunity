---@type NvPluginSpec
local spec = {
  {
    "anuvyklack/fold-preview.nvim",
    opts = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
    init = function()
      local map = vim.keymap.set

      map("n", "<leader>a", function()
        require("fold-preview").toggle_preview()
      end, { desc = "Fold preview" })
    end,
  },
}



return spec
