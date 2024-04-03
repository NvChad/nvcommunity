local spec = {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "debugloop/telescope-undo.nvim",
      init = function()
        local map = vim.keymap.set

        map("n", "<leader>fu", "<CMD>Telescope undo<CR>", { desc = "Find undo" })
      end,
      config = function()
        require("telescope").load_extension "undo"
      end,
    },
  },
}

return spec
