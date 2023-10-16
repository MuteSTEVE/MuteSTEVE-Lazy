-- Map Leader key
vim.g.mapleader = ' '

-- Define map as keybind
local map = vim.api.nvim_set_keymap
local mapset = vim.keymap.set

-- cmp-dictionary
map("n", "<leader>en", "<cmd>set spelllang=en<CR>", {})
map("n", "<leader>id", "<cmd>set spelllang=id<CR>", {})

map("n", "<leader>h", "<cmd>nohlsearch<cr>", { silent = true })
map("n", "<leader>w", "<cmd>w<cr>", {})
map("n", "<leader>s", "<cmd>so<cr>", {})
map("n", "<leader>q", "<cmd>q<cr>", {})
map("n", "<C-q>", "<cmd>q!<cr>", {})
map("n", "<S-l>", "<cmd>Lazy<cr>", {})

-- Some useful keybinds VSCode move line keybind
map('n', '<Left>', '<C-w>h', { noremap = true, silent = false })
map('n', '<Down>', '<C-w>j', { noremap = true, silent = true })
map('n', '<Up>', '<C-w>k', { noremap = true, silent = true })
map('n', '<Right>', '<C-w>l', { noremap = true, silent = true })

map('n', 'K', "<cmd>move .-2<CR>==", { noremap = true, silent = true })
map('n', 'J', "<cmd>move .+1<CR>==", { noremap = true, silent = true })
map('v', 'K', "<cmd>move '<-2<CR>gv-gv", { noremap = true, silent = true })
map('v', 'J', "<cmd>move '>+1<CR>gv-gv", { noremap = true, silent = true })

-- buffer movement
map('n', 'Z', '<cmd>bp<CR>', { noremap = true, silent = true })
map('n', 'C', '<cmd>bn<CR>', { noremap = true, silent = true })
map('n', 'X', '<cmd>bd<CR>', { noremap = true, silent = true })

-- Move between panes quickly
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })

-- Get out of insert mode quickly
map('i', 'ka', '<ESC>', { noremap = true, silent = false })
map('i', 'ak', '<ESC>', { noremap = true, silent = false })

-- Indent
map('v', '<', '<gv', { noremap = true, silent = false })
map('v', '>', '>gv', { noremap = true, silent = false })

mapset("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>]])
mapset("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
