local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
  size = 10,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 1,
  start_in_insert = true,
  persist_size = true,
  direction = 'float'
})

vim.cmd([[
  command! -nargs=0 Ncmpcpp lua require('toggleterm').exec('ncmpcpp ; exit', 1)
]])

vim.keymap.set('n', '<leader>tv', ":ToggleTerm direction=vertical size=50<cr>", {silent = true})
vim.keymap.set('n', '<leader>th', ":ToggleTerm direction=horizontal size=12<cr>", {silent = true})
vim.keymap.set('n', '<leader>tf', ":ToggleTerm direction=float<cr>", {silent = true})
vim.keymap.set('n', '<leader>tt', ":ToggleTerm direction=tab<cr>", {silent = true})
vim.keymap.set('n', '<leader>m', ":Ncmpcpp<cr>", {silent = true})
