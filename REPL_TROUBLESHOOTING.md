-- DAP REPL Configuration and Troubleshooting Guide

-- Your current REPL keybinding:
-- <leader>dr - Toggle REPL (already configured)

-- Additional REPL-related keybindings you might want:
-- <leader>dR - Open REPL and focus it
-- <leader>de - Evaluate expression under cursor

-- Troubleshooting REPL Issues:

-- 1. Make sure the debugger is running before trying to open REPL
-- 2. Some debug adapters might not support REPL
-- 3. Check if there are any error messages in :messages

-- To manually check if REPL is available:
-- In Neovim command mode, try: :lua require('dap').repl.open()

-- To evaluate an expression manually:
-- In Neovim command mode, try: :lua require('dap').repl.put('your_expression')

-- If REPL is not showing:
-- 1. Try <leader>du to toggle DAP UI first
-- 2. Then try <leader>dr to toggle REPL
-- 3. Check if REPL appears in the bottom panel

-- For C++ debugging with LLDB-DAP, REPL support might be limited
-- You might need to use the console in the DAP UI instead

-- To check what's in the dap session:
-- :lua print(vim.inspect(require('dap').session()))