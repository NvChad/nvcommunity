---@type NvPluginSpec
local spec = {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "tzachar/cmp-tabnine",
        build = "./install.sh",
        config = function()
          local tabnine = require "cmp_tabnine.config"
          tabnine:setup {
            max_lines = 1000,
            max_num_results = 3,
            sort = true,
            show_prediction_strength = false,
            run_on_every_keystroke = true,
            snipper_placeholder = "..",
            ignored_file_types = {},
          }
        end,
      },
    },
    config = function()
      local opts = require "plugins.configs.cmp"
      table.insert(opts.sources, { name = "cmp_tabnine" })
      require("cmp").setup(opts)
    end,
  },
}

return spec
