return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.elixirls.setup({
        cmd = { "/Users/m.a.matyunin/language-servers/elixir/elixir-ls-v0.27.2/language_server.sh" },
      })
      lspconfig.basedpyright.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.angularls.setup({})
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "elixir", "eex", "heex" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  {
    "windwp/nvim-ts-autotag",
  },

  {
    "mfussenegger/nvim-dap",
  },
}
