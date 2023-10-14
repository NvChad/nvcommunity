# Neogit

## Plugin for git management

[Neogit](https://github.com/NeogitOrg/neogit) is a *git* repository management plugin, allowing you to perform all common operations on repositories from an interface built into the editor without the need for external applications.

## Plug-in insertion

The following code must be added for insertion into the configuration:

```lua
"NvChad/nvcommunity",
{ import = "nvcommunity.git.diffview" },
{ import = "nvcommunity.git.neogit" },
```
