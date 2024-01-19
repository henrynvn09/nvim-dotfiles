-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == "" then
      require("telescope.builtin").oldfiles()
    end
  end,
})

