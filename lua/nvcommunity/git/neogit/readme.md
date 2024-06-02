# Neogit

## Plugin for git management

[Neogit](https://github.com/NeogitOrg/neogit) is a *git* repository management plugin, allowing you to perform all common operations on repositories from an interface built into the editor without the need for external applications.

## Plug-in insertion

You need to add the following code in the `custom/plugins.lua` file to include it in the configuration:

```lua
"NvChad/nvcommunity",
{ import = "nvcommunity.git.diffview" },
{ import = "nvcommunity.git.neogit" },
```

Once entered, it is necessary to close and reopen the editor to give NvChad a chance to install the missing plugins and activate the functionality.

NOTE: The `diffview` plugin is also required since the proposed configuration uses it to provide better visualization of changes. 

- Include base46's neogit highlight groups by this in your chadrc.lua :
```lua
M.base46 = {
  integrations = { "neogit" },
}
```
