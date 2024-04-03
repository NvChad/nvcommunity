---@type NvPluginSpec
local spec = {
  {

    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
    init = function()
      vim.g.code_action_menu_show_details = true
      vim.g.code_action_menu_show_diff = true
      vim.g.code_action_menu_show_action_kind = true
    end,
    config = function()
      dofile(vim.g.base46_cache .. "git")
    end,
  },
}

return spec
