---@type NvPluginSpec
local spec = {
  {
    "Wansmer/treesj",
    keys = { { "<leader>m", "<CMD>TSJToggle<CR>", desc = "Toggle Treesitter Join" } },
    cmd = { "TSJToggle" },
    opts = { use_default_keymaps = false },
    init = function()
      require("core.mappings").treesj = {
        n = {
          ["<leader>tt"] = { "<CMD>TSJToggle<CR>", "Toggle Treesitter Join/Split" },
        },
      }
      require("core.utils").load_mappings "treesj"
    end,
  },
}

return spec
