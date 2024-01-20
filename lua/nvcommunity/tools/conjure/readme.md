# [Conjure](https://github.com/Olical/conjure)

Interactive REPL-based development plugin for Neovim.

Make sure to set localleader.

```lua
vim.g.maplocalleader = ","
-- set localleader to comma key
```

Example configuration:

```lua
{
    "conjure",
    init = function()
      vim.g["conjure#log#hud#enabled"] = false
      -- add more here
    end,
},
```

# Add additional cmp source

Supposed you have multiple cmp sources.
For example, Codeium from Nvcommunity.

Place this snippet at the bottom of plugins table.

```lua
{
    "hrsh7th/nvim-cmp",
    config = function(_, opts)
      table.insert(opts.sources, { name = "conjure" })
      table.insert(opts.sources, { name = "codeium" })
      -- add more sources as example
      require("cmp").setup(opts)
    end,
},
```
