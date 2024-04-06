return {
  'mfussenegger/nvim-dap-python',
  config = function()
    require('nvim-dap-python').setup('~/.virtualenvs/debugpy/bin/python')
  end
}
