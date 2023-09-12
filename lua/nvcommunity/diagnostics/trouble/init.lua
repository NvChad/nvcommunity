---@type NvPluginSpec
local spec = {
  "folke/trouble.nvim",
  cmd = { "Trouble", "TroubleToggle", "TodoTrouble" },
  opts = {},
  init = function()
    local ext = require("custom.chadrc").ui.extended_integrations or {}
    table.insert(ext, "trouble")
    require("custom.chadrc").ui.extended_integrations = ext
    require("base46").load_all_highlights()
    dofile(vim.g.base46_cache .. "trouble")
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
