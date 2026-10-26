return {
  "mfussenegger/nvim-dap-python",
  config = function()
    local mason_registry = require("mason-registry")
    local debugpy_package = mason_registry.get_package("debugpy")
    local path = debugpy_package:get_install_path()
    local debugpy_python = path .. "/venv/bin/python"

    -- Set up nvim-dap-python using mason's debugpy venv
    require("dap-python").setup(debugpy_python)

    -- Configure all python debugger configurations to:
    -- 1. Use the local workspace virtual environment (.venv) python if it exists
    -- 2. Inject PYTHONPATH = "${workspaceFolder}" so absolute imports from the workspace root work
    local dap = require("dap")
    if dap.configurations.python then
      for _, config in ipairs(dap.configurations.python) do
        config.pythonPath = function()
          local cwd = vim.fn.getcwd()
          if vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
            return cwd .. "/.venv/bin/python"
          elseif vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
            return cwd .. "/venv/bin/python"
          else
            return "python"
          end
        end

        if not config.env then
          config.env = {}
        end
        config.env.PYTHONPATH = "${workspaceFolder}"
      end
    end
  end,
}
