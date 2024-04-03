---@type NvPluginSpec
local spec = {
  {
    "code-biscuits/nvim-biscuits",
    event = "BufReadPost",
    opts = {
      show_on_start = false,
      cursor_line_only = true,
      default_config = {
        min_distance = 10,
        max_length = 50,
        prefix_string = " 󰆘 ",
        prefix_highlight = "Comment",
        enable_linehl = true,
      },
    },
  },
}

return spec
