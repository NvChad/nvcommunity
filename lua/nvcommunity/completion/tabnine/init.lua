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

          vim.api.nvim_create_autocmd("BufRead", {
            group = vim.api.nvim_create_augroup("prefetch", { clear = true }),
            pattern = "*",
            callback = function()
              require("cmp_tabnine"):prefetch(vim.fn.expand "%:p")
            end,
          })
        end,
      },
    },
    opts = function(_, opts)
      if not opts.sources then
        opts.sources = {}
      end
      table.insert(opts.sources, { name = "cmp_tabnine" })
    end,
  },
}

return spec
