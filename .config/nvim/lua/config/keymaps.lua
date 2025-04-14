-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<leader>ss", "<cmd>Telescope aerial<CR>", { desc = "Search Symbols (Aerial)" })
-- Salvar com <leader>w
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Salvar arquivo" })