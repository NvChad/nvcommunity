---@type NvPluginSpec
local spec = {
  {
    "Wansmer/treesj",
    keys = { { "<leader>m", "<CMD>TSJToggle<CR>", desc = "Toggle Treesitter Join" } },
    cmd = { "TSJToggle" },
    opts = { use_default_keymaps = false },
    init = function()
      local map = vim.keymap.set

      map("n", "<leader>tt", "<CMD>TSJToggle<CR>", { desc = "Toggle Treesitter Join/Split" })
    end,
  },
}

return spec
