---@type NvPluginSpec
local spec = {
  "folke/trouble.nvim",
  cmd = { "Trouble", "TroubleToggle", "TodoTrouble" },
  dependencies = {
    "folke/todo-comments.nvim"
  },
  opts = {},
  init = function()
    require("core.mappings").trouble = {
      plugin = true,
      n = {
        ["<leader>t"] = { "<CMD>TroubleToggle<CR>", "Toggle diagnostics" },
        ["<leader>td"] = { "<CMD>TodoTrouble keywords=TODO,FIX,FIXME,BUG,TEST,NOTE<CR>", "Todo/Fix/Fixme" },
      },
    }
    require("core.utils").load_mappings "trouble"
  end,
}

return spec
