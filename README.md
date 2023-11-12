
<div align="center">
    <img src="https://nvchad.com/logo.svg" width=210", height="200">
</div>

<h1 align="center">NvChad Community Repository</h1>

<p align="center">
    <a href="https://github.com/NvChad/nvcommunity/tree/main/lua/nvcommunity/completion">
      <img src="https://img.shields.io/github/directory-file-count/NvChad/nvcommunity/lua/nvcommunity/completion?label=Completion-Plugins&style=for-the-badge&logo=neovim&logoColor=D9E0EE&labelColor=302D41&color=f5a97f"/>
    </a>
    <a href="https://github.com/NvChad/nvcommunity/tree/main/lua/nvcommunity/diagnostics">
      <img src="https://img.shields.io/github/directory-file-count/NvChad/nvcommunity/lua/nvcommunity/diagnostics?label=Diagnostics-Plugins&style=for-the-badge&logo=neovim&logoColor=D9E0EE&labelColor=302D41&color=a6da95"/>
    </a>
    <a href="https://github.com/NvChad/nvcommunity/tree/main/lua/nvcommunity/editor">
      <img src="https://img.shields.io/github/directory-file-count/NvChad/nvcommunity/lua/nvcommunity/editor?label=Editor-Plugins&style=for-the-badge&logo=neovim&logoColor=D9E0EE&labelColor=302D41&color=8bd5ca"/>
    </a>
    <a href="https://github.com/NvChad/nvcommunity/tree/main/lua/nvcommunity/folds">
      <img src="https://img.shields.io/github/directory-file-count/NvChad/nvcommunity/lua/nvcommunity/folds?label=Folds-Plugins&style=for-the-badge&logo=neovim&logoColor=D9E0EE&labelColor=302D41&color=91d7e3"/>
    </a>
    <a href="https://github.com/NvChad/nvcommunity/tree/main/lua/nvcommunity/git">
      <img src="https://img.shields.io/github/directory-file-count/NvChad/nvcommunity/lua/nvcommunity/git?label=Git-Plugins&style=for-the-badge&logo=neovim&logoColor=D9E0EE&labelColor=302D41&color=7dc4e4"/>
    </a>
    <a href="https://github.com/NvChad/nvcommunity/tree/main/lua/nvcommunity/lsp">
      <img src="https://img.shields.io/github/directory-file-count/NvChad/nvcommunity/lua/nvcommunity/lsp?label=LSP-Plugins&style=for-the-badge&logo=neovim&logoColor=D9E0EE&labelColor=302D41&color=f4dbd6"/>
    </a>
    <a href="https://github.com/NvChad/nvcommunity/tree/main/lua/nvcommunity/motion">
      <img src="https://img.shields.io/github/directory-file-count/NvChad/nvcommunity/lua/nvcommunity/motion?label=Motion-Plugins&style=for-the-badge&logo=neovim&logoColor=D9E0EE&labelColor=302D41&color=c6a0f6"/>
    </a>
    <a href="https://github.com/NvChad/nvcommunity/tree/main/lua/nvcommunity/tools/presence">
      <img src="https://img.shields.io/github/directory-file-count/NvChad/nvcommunity/lua/nvcommunity/tools/presence?label=Tools/Presence-Plugins&style=for-the-badge&logo=neovim&logoColor=D9E0EE&labelColor=302D41&color=ee99a0"/>
    </a>
   
</p>

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


# Nvcommunity

NvChad community repo for sharing plugin configurations

This is inspired by AstroNvim's community repo.
