require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-.>", [[<cmd>vertical resize +2<cr>]]) -- make the window biger vertically
map("n", "<C-,>", [[<cmd>vertical resize -2<cr>]]) -- make the window smaller vertically
map("n", "<C-=>", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
map("n", "<C-->", [[<cmd>horizontal resize -2<cr>]]) -- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
