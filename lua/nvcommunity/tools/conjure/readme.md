# Conjure

Interactive REPL-based development plugin for Neovim.

Make sure to set localleader.
```lua
vim.g.maplocalleader = "m"
-- set localleader as m
```

Example configuration:
```lua
{
    "conjure",
    init = function()
      vim.g["conjure#log#hud#enabled"] = false
    end,
},
```
