---@type NvPluginSpec
local spec = {
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    opts = {
      code_action = {
        show_server_name = false,
        num_shortcut = false,
      },
      request_timeout = 2000,
      lightbulb = {
        enable = true,
        enable_in_insert = true,
        sign = true,
        sign_priority = 40,
        virtual_text = false,
      },
      diagnostic = {
        show_code_action = true,
      },
      symbol_in_winbar = {
        enable = true,
        separator = " ",
        hide_keyword = true,
        show_file = true,
        folder_level = 2,
        respect_root = false,
        color_mode = true,
      },
      ui = {
        title = false,
        expand = "",
        collapse = "",
        code_action = "",
      },
    },
  },
}

return spec
