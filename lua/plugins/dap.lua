return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require('dap')
    dap.configurations.python = {
      {
        type = 'python';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
        pythonPath = function()
          return '/home/aa87/.pyenv/shims/python3'
        end;
      }
    }
    dap.adapters.python = {
      type = 'executable';
      command = os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';
      args = { '-m', 'debugpy.adapter' };
    }

    require("dap-vscode-js").setup({
      node_path = os.getenv('HOME') .. '/.nvm/versions/node/v18.17.1/bin/node',
      -- debugger_path = "~/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src",
      debugger_path = os.getenv('HOME') .. '/web-dev/vscode-js-debug/',
      adapters = { 'pwa-node' }, -- which adapters to register in nvim-dap
    })

    dap.configurations.javascript = {
      {
    type = "pwa-node",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
  {
    type = "pwa-node",
    request = "attach",
    name = "Attach",
    processId = require'dap.utils'.pick_process,
    cwd = "${workspaceFolder}",
  }}

  end
}
