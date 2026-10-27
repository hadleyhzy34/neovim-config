-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Disable line wrap in markdown buffers so tables and code blocks don't wrap and break layout
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.wrap = false
  end,
})
-- Guard against a deleted working directory.
--
-- libuv's uv.cwd() returns nil ("ENOENT") when the process working directory
-- has been deleted/renamed on disk (e.g. a git worktree that was removed, or a
-- build/tmp dir cleaned up while nvim was open). LazyVim.root() falls back to
-- uv.cwd() for unnamed buffers and hands it to vim.fs.find, which asserts
-- uv.cwd() and throws E5108 "ENOENT: no such file or directory" -- breaking the
-- snacks explorer (<leader>e) and Find Files (<leader><space>). Self-heal by
-- :cd-ing to ~ so root detection works again.
local function ensure_cwd()
  if vim.uv.cwd() ~= nil then
    return
  end
  pcall(vim.cmd, "cd ~")
  vim.notify("Working directory was missing — reset to ~. Run :cd to switch back.", vim.log.levels.WARN)
end

-- Fix immediately (this file loads on VeryLazy, after startup).
ensure_cwd()

-- No Neovim event fires when the cwd is deleted externally, so poll for it.
local timer = vim.uv.new_timer()
timer:start(10000, 10000, function()
  vim.schedule(ensure_cwd)
end)

-- Custom cursorline and line number highlight contrast
local function set_cursorline_highlights()
  vim.api.nvim_set_hl(0, "CursorLine", {
    bg = "#112e4d",
  })
  vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = "#ffcb6b",
    bold = true,
  })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_cursorline_highlights,
})

set_cursorline_highlights()
