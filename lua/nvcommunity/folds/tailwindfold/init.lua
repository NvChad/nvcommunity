---@type NvPluginSpec
local spec = {
  {
    "razak17/tailwind-fold.nvim",
    ft = { "html", "svelte", "astro", "vue", "typescriptreact" },
    opts = {
      min_chars = 50,
    },
  },
}

return spec
