---@type NvPluginSpec
local spec = {
  {
    "kevinhwang91/nvim-fundo",
    event = "BufReadPost",
    opts = {},
    init = function()
      vim.o.undofile = true
    end,
    build = function()
      require("fundo").install()
    end,
  },
}

return spec
