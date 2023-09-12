---@type NvPluginSpec
local spec = {
  "folke/trouble.nvim",
  cmd = { "Trouble", "TroubleToggle", "TodoTrouble" },
  opts = {},
  init = function()
    require("core.utils").load_mappings "todo"
  end,
}

require("core.mappings").todo = {
  n = {
    ["<leader>t"] = { "<CMD>TroubleToggle<CR>", "Toggle diagnostics" },
    ["<leader>td"] = { "<CMD>TodoTrouble keywords=TODO,FIX,FIXME,BUG,TEST,NOTE<CR>", "Todo/Fix/Fixme" },
  },
}

return spec
