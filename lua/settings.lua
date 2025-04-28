-- Disable built-in file tree viewer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Show whitespace
vim.opt.list = true
vim.opt.listchars = { space = "⋅", trail = "⋅", tab = "  ↦" }

-- Show relative line numbers and absolute
-- for the current line
vim.wo.number = true
vim.wo.relativenumber = true

-- Use indentation of 2 spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- Enable mouse mode
vim.opt.mouse = "a"

-- Case insensitive searching UNLESS /C or the search has capitals
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- ripgrep config for :grep
vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"
vim.opt.grepformat = "%f:%l:%c:%m"
