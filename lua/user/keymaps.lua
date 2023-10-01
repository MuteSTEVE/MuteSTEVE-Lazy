vim.g.mapleader = ' '
local map = vim.keymap.set

-- VScode moving line
map('n', 'K', ":move .-2<CR>==", {silent = true})
map('n', 'J', ":move .+1<CR>==",{silent = true})
map('v', 'K', ":move '<-2<CR>gv-gv",{silent = true})
map('v', 'J', ":move '>+1<CR>gv-gv",{silent = true})

-- get out insert mode quickly
map("i", "ka", "<ESC>", {})
map("i", "ak", "<ESC>", {})
map("v", "ak", "<ESC>", {})
map("v", "ka", "<ESC>", {})

map("n", "<leader>h", ":nohlsearch<cr>", {silent = true})
map("n", "<leader>w", ":w<cr>", {})
map("n", "<leader>s", ":so<cr>", {})
map("n", "<leader>qq", ":q<cr>", {})
map("n", "<leader>qw", ":wq<cr>", {})

-- buffer movement
map('n', 'Z', ':bp<CR>', { noremap = true, silent = true})
map('n', 'C', ':bn<CR>', { noremap = true, silent = true})
map('n', 'X', ':bd<CR>', { noremap = true, silent = true})

map('n', '<leader>L', ':Lazy<CR>', {})
