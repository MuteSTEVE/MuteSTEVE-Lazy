vim.g.mapleader = ' '

vim.keymap.set('n', 'K', ":move .-2<CR>==", {silent = true})
vim.keymap.set('n', 'J', ":move .+1<CR>==",{silent = true})
vim.keymap.set('v', 'K', ":move '<-2<CR>gv-gv",{silent = true})
vim.keymap.set('v', 'J', ":move '>+1<CR>gv-gv",{silent = true})
