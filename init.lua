-- Install Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("settings")
require("keymaps")
require("autocmds")
require("lsp")

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  install = { colorscheme = { "kanagawa" } },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  }, -- automatically check for plugin updates
  rocks = {
    enabled = false,
  },
  -- Don't bother me when tweaking plugins.
  change_detection = { notify = false },
  performance = {
    rtp = {
      -- Stuff I don't use.
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "rplugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

require("kanagawa").setup({
  theme = "wave",
})

vim.cmd("colorscheme kanagawa")

--require("nvim-tree").setup()
require("mini.files").setup()
