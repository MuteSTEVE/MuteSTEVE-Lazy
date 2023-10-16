vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

map("n", "la", "<cmd>lua vim.lsp.buf.definition()<CR>", {})
map("n", "lI", "<cmd>lua vim.lsp.buf.implementation()<CR>", {})
map("n", "lr", "<cmd>lua vim.lsp.buf.references()<CR>", {})
map("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", {})
map("n", "<leader>li", "<cmd>LspInfo<cr>", {})
map("n", "<leader>lI", "<cmd>LspInstallInfo<cr>", {})
map("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {})
map("n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", {})

map("n", "K", "<cmd>Lspsaga hover_doc<cr>", {})
map("n", "ll", "<cmd>Lspsaga show_line_diagnostics<cr>", {})
map("n", "<leader>lr", "<cmd>Lspsaga rename<cr>", {})
map("n", "<leader>la", "<cmd>Lspsaga code_action<cr>", {})
map("n", "<leader>lj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {})
map("n", "<leader>lk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {})
