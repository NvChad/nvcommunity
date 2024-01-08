---@type NvPluginSpec
local spec = {
  'akinsho/git-conflict.nvim',
  dependencies = {
    {
      'akinsho/git-conflict.nvim',
      cmd = {
        'GitConflictChooseOurs',
        'GitConflictChooseTheirs',
        'GitConflictChooseBoth',
        'GitConflictChooseNone',
        'GitConflictNextConflict',
        'GitConflictPrevConflict',
        'GitConflictListQf',
      },
      config = true,
    },
  }
}

return spec
