vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.keymap.set('n', 'zo', "<cmd>foldopen<cr>")
vim.keymap.set('n', 'zO', require('ufo').openAllFolds)
vim.keymap.set('n', 'zc', "<cmd>foldclose<cr>")
vim.keymap.set('n', 'zC', require('ufo').closeAllFolds)
vim.keymap.set('n', 'zK', function ()
  local winid = require("ufo").peekFoldedLinesUnderCursor()
  if not winid then
    vim.lsp.buf.hover()
  end
end)

require('ufo').setup({
  provider_selector = function (bufnr, filetype, buftype)
    return { 'lsp', 'indent' }
  end
})
