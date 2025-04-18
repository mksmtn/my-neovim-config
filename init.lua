vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")
require("kanagawa").load("wave")

require("nvim-tree").setup({
  view = {
    side = "right",
  },
  renderer = {
    highlight_diagnostics = "all",
  },
  diagnostics = {
    enable = true,
  },
})

require("nvim-ts-autotag").setup({})

require("gitsigns").setup()

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 2

vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"
vim.opt.grepformat = "%f:%l:%c:%m"

vim.keymap.set("n", "<leader>.", vim.lsp.buf.code_action, { noremap = true })
vim.keymap.set("n", "<leader><F2>", vim.lsp.buf.rename, { noremap = true })

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("OpenQuickFix", { clear = true })
autocmd("FileType", {
  group = "OpenQuickFix",
  pattern = "qf",
  command = "wincmd H",
})

local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.completion.spell,
    null_ls.builtins.diagnostics.cppcheck,
    null_ls.builtins.diagnostics.credo,
    null_ls.builtins.diagnostics.pylint,
  },
})
