vim.keymap.set("n", "<leader>rf", ":w<CR>:!gcc % -o %:r && ./%:r<CR>", { buffer = true, desc = "Compile and run file" })
vim.keymap.set("n", "<leader>df", ":w<CR>:!gcc -g % -o %:r<CR>", { buffer = true, desc = "Compile file for debugging" })
