---@type NvPluginSpec
local spec = {
  "NeogitOrg/neogit",
  cmd = "Neogit",
  ft = { "diff" },
  
  opts = {
    signs = { section = { "", "" }, item = { "", "" } },
    disable_commit_confirmation = true,
    integrations = { diffview = true },
  },
  
  config = function(_, opts)
    require("neogit").setup(opts)
    dofile(vim.g.base46_cache .. "git")
    dofile(vim.g.base46_cache .. "neogit")
  end,
}

return spec
