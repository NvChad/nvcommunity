---@type NvPluginSpec
local spec = {
  "folke/trouble.nvim",
  cmd = { "Trouble", "TroubleToggle", "TodoTrouble" },
  opts = {},
  init = function()
    local map = vim.keymap.set

    map("n", "<leader>t", "<CMD>TroubleToggle<CR>", { desc = "Toggle diagnostics" })
    map("n", "<leader>td", "<CMD>TodoTrouble keywords=TODO,FIX,FIXME,BUG,TEST,NOTE<CR>", { desc = "Todo/Fix/Fixme" })
  end,
}

return spec
