---@type NvPluginSpec
local spec = {
  {
    "kevinhwang91/nvim-ufo",
    event = "VimEnter",
    init = function()
      vim.o.foldcolumn = "auto"
      vim.o.foldlevel = 99 -- Using ufo provider need a large value
      vim.o.foldlevelstart = 99
      vim.o.foldnestmax = 0
      vim.o.foldenable = true
      vim.o.foldmethod = "indent"

      vim.opt.fillchars = {
        fold = " ",
        foldopen = "",
        foldsep = " ",
        foldclose = "",
        stl = " ",
        eob = " ",
      }
    end,
    dependencies = {
      "kevinhwang91/promise-async",
      {
        "luukvbaal/statuscol.nvim",
        opts = function()
          local builtin = require "statuscol.builtin"
          return {
            relculright = true,
            bt_ignore = { "nofile", "prompt", "terminal", "packer" },
            ft_ignore = {
              "NvimTree",
              "dashboard",
              "nvcheatsheet",
              "dapui_watches",
              "dap-repl",
              "dapui_console",
              "dapui_stacks",
              "dapui_breakpoints",
              "dapui_scopes",
              "help",
              "vim",
              "alpha",
              "dashboard",
              "neo-tree",
              "Trouble",
              "noice",
              "lazy",
              "toggleterm",
            },
            segments = {
              -- Segment: Add padding
              {
                text = { " " },
              },
              -- Segment: Fold Column
              {
                text = { builtin.foldfunc },
                click = "v:lua.ScFa",
                maxwidth = 1,
                colwidth = 1,
                auto = false,
              },
              -- Segment: Add padding
              {
                text = { " " },
              },
              -- Segment : Show signs with one character width
              {
                sign = {
                  name = { ".*" },
                  maxwidth = 1,
                  colwidth = 1,
                },
                auto = true,
                click = "v:lua.ScSa",
              },
              -- Segment: Show line number
              {
                text = { " ", " ", builtin.lnumfunc, " " },
                click = "v:lua.ScLa",
                condition = { true, builtin.not_empty },
              },
              -- Segment: GitSigns exclusive
              {
                sign = {
                  namespace = { "gitsign.*" },
                  maxwidth = 1,
                  colwidth = 1,
                  auto = false,
                },
                click = "v:lua.ScSa",
              },
              -- Segment: Add padding
              {
                text = { " " },
                hl = "Normal",
                condition = { true, builtin.not_empty },
              },
            },
          }
        end,
      },
    },
    opts = {
      close_fold_kinds_for_ft = { default = { "imports" } },
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    },
  },
}

return spec
