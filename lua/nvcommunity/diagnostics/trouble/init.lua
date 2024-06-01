---@type NvPluginSpec
local spec = {
  "folke/trouble.nvim",
  cmd = { "Trouble", "TroubleToggle", "TodoTrouble" },
  dependencies = {
    {
      "folke/todo-comments.nvim",
      opts = {}
    }
  },
  opts = {},
  init = function()
    local map = vim.keymap.set

    map("n", "<leader>t", "<CMD>Trouble diagnostics toggle<CR>", { desc = "Toggle diagnostics" })
    map("n", "<leader>td", "<CMD>TodoTrouble keywords=TODO,FIX,FIXME,BUG,TEST,NOTE<CR>", { desc = "Todo/Fix/Fixme" })
  end,
}

return spec
