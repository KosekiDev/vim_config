-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- Harpoon plugin keymaps
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-q>", ui.toggle_quick_menu)

vim.keymap.set("n", "<CS-H>", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<CS-J>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<CS-K>", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<CS-L>", function()
  ui.nav_file(4)
end)

-- BuildScript plugin keymaps
vim.keymap.set("n", "<leader>bs", ":OpenBuildScripts<CR>")

-- Removing LazyVim annoying keymaps
vim.cmd("unmap <A-j>")
vim.cmd("unmap <A-k>")
