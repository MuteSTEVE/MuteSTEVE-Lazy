local telescope_ok, telescope = pcall(require, 'telescope')
if not telescope_ok then
  return
end

local actions_ok, actions = pcall(require, 'telescope.actions')
if not actions_ok then
  return
end

telescope.load_extension("lazygit")
vim.cmd("autocmd BufEnter * :lua require('lazygit.utils').project_root_dir()")

telescope.setup {
  defaults = {
    prompt_prefix = " 󰍉 ",
    selection_caret = "  ",
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-f>"] = actions.close,
        ["<leader>ff"] = actions.close,
        ["<leader>fw"] = actions.close,
        ["<leader>b"] = actions.close,
        ["<leader>u"] = actions.close,
        ["<esc>"] = actions.close,
      },
    },
  },
}
