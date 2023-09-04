---@type NvPluginSpec
local spec = {
  {
    "kevinhwang91/nvim-ufo",
    event = "VimEnter",
    dependencies = {
      "kevinhwang91/promise-async",
      {
        "luukvbaal/statuscol.nvim",
        opts = {
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
            { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
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
            -- Segment: Add padding
            {
              text = { " " },
              hl = "Normal",
              condition = { true, builtin.not_empty },
            },
          },
        },
      },
    },
    opts = {
      close_fold_kinds = { "imports" },
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    },
  },
}

return spec
