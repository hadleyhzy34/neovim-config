-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- -- Delete a word backwards
-- keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- -- Disable continuations
-- keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
-- keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- nvim surround
-- Use the default nvim-surround bindings:
-- ys{motion}{char} to add surroundings (e.g., ysiw" to surround inner word with quotes)
-- cs{target}{replacement} to change surroundings (e.g., cs"' to change double quotes to single)
-- ds{char} to delete surroundings (e.g., ds" to delete surrounding quotes)
--
-- In Normal Mode:
--  1. Add surroundings with `sa` (instead of `ys`):   - saiw" - Surround inner word with double quotes
--     - saiw( or saiwb - Surround inner word with parentheses
--     - sa$} - Surround until end of line with curly braces
--     - sap" - Surround entire paragraph with double quotes
--
--  2. Change surroundings with `sr` (instead of `cs`):   - sr"' - Change surrounding double quotes to single quotes
--     - sr([ - Change surrounding parentheses to square brackets
--
--  3. Delete surroundings with `sd` (instead of `ds`):   - sd" - Delete surrounding double quotes   - sd( - Delete
--     surrounding parentheses
--
-- In Visual Mode:
--  - Select text, then press S followed by the character:  - S" - Surround selection with double quotes  - S( -
--    Surround selection with parentheses

-- Custom mappings to use sa/sr/sd instead of ys/cs/ds
keymap.set("n", "sa", "ys", { remap = true })
keymap.set("n", "sr", "cs", { remap = true })
keymap.set("n", "sd", "ds", { remap = true })
