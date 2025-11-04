local filetype = vim.bo.filetype
if filetype == "c" then
  vim.keymap.set(
    "n",
    "<leader>rf",
    ":w<CR>:!gcc % -o %:r && ./%:r<CR>",
    { buffer = true, desc = "Compile and run file" }
  )
  vim.keymap.set(
    "n",
    "<leader>df",
    ":w<CR>:!gcc -g % -o %:r<CR>",
    { buffer = true, desc = "Compile file for debugging" }
  )
elseif filetype == "cpp" then --because neovim sources this file for c++ and not only cpp.lua
  vim.keymap.set(
    "n",
    "<leader>rf",
    ":w<CR>:!g++ % -o %:r && ./%:r<CR>",
    { buffer = true, desc = "Compile and run file" }
  )
  vim.keymap.set(
    "n",
    "<leader>df",
    ":w<CR>:!g++ -g % -o %:r<CR>",
    { buffer = true, desc = "Compile file for debugging" }
  )
end
