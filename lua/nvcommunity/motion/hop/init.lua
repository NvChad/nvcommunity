---@type NvPluginSpec
local spec = {
  {
    "smoka7/hop.nvim",
    cmd = { "HopWord", "HopLine", "HopLineStart", "HopWordCurrentLine" },
    opts = { keys = "etovxqpdygfblzhckisuran" },
    init = function()
      local map = vim.keymap.set

      map("n", "<leader><leader>w", "<CMD> HopWord <CR>", { desc = "Hint all words" })
      map("n", "<leader><leader>t", "<CMD> HopNodes <CR>", { desc = "Hint Tree" })
      map("n", "<leader><leader>c", "<CMD> HopLineStart<CR>", { desc = "Hint Columns" })
      map("n", "<leader><leader>l", "<CMD> HopWordCurrentLine<CR>", { desc = "Hint Line" })
    end,
  },
}

return spec
