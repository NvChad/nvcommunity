---@type NvPluginSpec
local spec = {
    {
        "TimUntersberger/neogit",
        ft = { "diff" },
        cmd = "Neogit",
        dependencies = {"sindrets/diffview.nvim"},
        opts = {
            signs = {section = {"", ""}, item = {"", ""}},
            disable_commit_confirmation = true,
            integrations = {diffview = true},
        },
    },
}

return spec
