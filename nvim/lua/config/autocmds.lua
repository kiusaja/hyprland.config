local autocmd = vim.api.nvim_create_autocmd

-- Text beim Kopieren  aufleuchten, so zum checken, checkst du?
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 150,
    })
  end,
})
