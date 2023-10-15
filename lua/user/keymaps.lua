-- Map Leader key
vim.g.mapleader = ' '

-- Define map as keybind
local map = vim.api.nvim_set_keymap
local mapset = vim.keymap.set

map("n", "<leader>h", ":nohlsearch<cr>", {silent = true})
map("n", "<leader>w", ":w<cr>", {})
map("n", "<leader>s", ":so<cr>", {})
map("n", "<leader>q", ":q<cr>", {})
map("n", "<leader>Q", ":q<cr>", {})

-- Some useful keybinds VSCode move line keybind
map('n', '<Left>', '<C-w>h', { noremap = true, silent = false })
map('n', '<Down>', '<C-w>j', { noremap = true, silent = true })
map('n', '<Up>', '<C-w>k', { noremap = true, silent = true })
map('n', '<Right>', '<C-w>l', { noremap = true, silent = true })

map('n', 'K', ":move .-2<CR>==", { noremap = true, silent = true })
map('n', 'J', ":move .+1<CR>==", { noremap = true, silent = true })
map('v', 'K', ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
map('v', 'J', ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

-- buffer movement
map('n', 'Z', ':bp<CR>', { noremap = true, silent = true})
map('n', 'C', ':bn<CR>', { noremap = true, silent = true})
map('n', 'X', ':bd<CR>', { noremap = true, silent = true})

-- Move between panes quickly
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

-- Get out of insert mode quickly
map('i', 'ka', '<ESC>', {noremap = true, silent = false})
map('i', 'ak', '<ESC>', {noremap = true, silent = false})
map('v', 'ak', '<ESC>', {noremap = true, silent = false})
map('v', 'ka', '<ESC>', {noremap = true, silent = false})

-- Indent
map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

mapset("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>]])
mapset("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- LSP
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {})
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", {})
map("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", {})
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {})
map("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", {})
map("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", {})
map("n", "<leader>li", "<cmd>LspInfo<cr>", {})
map("n", "<leader>lI", "<cmd>LspInstallInfo<cr>", {})
map("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", {})
map("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", {})
map("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", {})
map("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", {})
map("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {})
map("n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", {})
