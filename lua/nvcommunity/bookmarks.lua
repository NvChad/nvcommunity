---@type NvPluginSpec
local spec = {
  {
    "MattesGroeger/vim-bookmarks",
    cmd = "BookmarkToggle",
    init = function()
      vim.g.bookmark_sign = ""
    end,
  },
}

return spec
