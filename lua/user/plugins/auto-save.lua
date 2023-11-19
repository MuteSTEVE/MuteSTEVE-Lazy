local auto_save_ok, auto_save = pcall(require, "auto-save")
if not auto_save_ok then
  return
end

auto_save.setup({
  enabled = true, -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
  execution_message = {
    message = function() -- message to print on save
      return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
    end,
    dim = 0.18, -- dim the color of `message`
    cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
  },
})
