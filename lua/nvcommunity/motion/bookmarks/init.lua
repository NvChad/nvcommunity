---@type NvPluginSpec
local spec = {
  {
    "MattesGroeger/vim-bookmarks",
    cmd = {
      "BookmarkToggle",
      "BookmarkAnnotate",
      "BookmarkNext",
      "BookmarkPrev",
      "BookmarkShowAll",
      "BookmarkClearAll",
      "BookmarkClear",
    },
    init = function()
      vim.g.bookmark_sign = ""
    end,
  },
}

return spec
