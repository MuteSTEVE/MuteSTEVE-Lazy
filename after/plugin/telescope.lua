local telescope_ok, telescope = pcall(require, 'telescope')

if not telescope_ok then
  return
end

local actions_ok, actions = pcall(require, 'telescope.actions')
if not actions_ok then
  return
end

local builtin, builtin = pcall(require, 'telescope.builtin')
if not actions_ok then
  return
end

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>")

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-f>"] = actions.close,
        ["<leader>ff"] = actions.close,
        ["<leader>fw"] = actions.close,
        ["<leader>b"] = actions.close,
        ["<esc>"] = actions.close,
      },
    },
  },
}
