local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
  size = 30,
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

vim.cmd([[
  command! -nargs=0 Lazygit lua require('toggleterm').exec('lazygit ; exit', 1)
]])
