--- Config for diffview.nvim
--- This will be load once gitsigns.nvim is loaded (when in a git repo)
--- To override the defaults, just define a block of
--- ```
--- {
---   "sindrets/diffview.nvim",
---   opts = function(_, opts)
---     -- Your config in here
---     return the new table containing the opts
---   end
--- }
--- ```


---@type NvPluginSpec
local spec = {
  "lewis6991/gitsigns.nvim",
  dependencies = {
    {
      "sindrets/diffview.nvim",
      config = true,
    },
  }
}

return spec
