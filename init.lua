vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")
require("kanagawa").load("wave")

require("nvim-tree").setup({
  view = {
    side = "right",
  },
})

require("insx.preset.standard").setup()

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 2

vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"
vim.opt.grepformat = "%f:%l:%c:%m"

vim.keymap.set("n", "<leader>.", vim.lsp.buf.code_action, { noremap = true })
vim.keymap.set("n", "<leader><F2>", vim.lsp.buf.rename, { noremap = true })
