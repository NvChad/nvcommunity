# nvcommunity

NvChad community repo for sharing plugin configurations

This is inspired by AstroNvim's community repo, although this isnt meant to be used always by non nvchad users, because it might contain code related to nvchad's base46 theme loading for certain plugins so watch-out!

# Usage

- In custom plugins table

```lua
"NvChad/nvcommunity",
{ import = "nvcommunity.git.diffview" },
{ import = "nvcommunity.git.lazygit" },
```

# Customize

- In custom plugins table

```lua
{ import = "nvcommunity.completion.copilot" },
{ "copilot.lua",
    opts = {
    ...
    },
},
```

# Contributing

Try your best to lazy-load a plugin (Of course without breaking its functionality)

- If you submit a plugin spec for a UI related plugin, please add extented integration for it in base46 repo.
