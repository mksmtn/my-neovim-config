return {
  { "rebelot/kanagawa.nvim" },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.elixirls.setup({
        cmd = { "/Users/m.a.matyunin/language-servers/elixir/elixir-ls-v0.27.1/language_server.sh" },
        capabilities = capabilities,
      })
      lspconfig.basedpyright.setup({
        capabilities = capabilities,
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
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
    "mfussenegger/nvim-dap",
  },

  {
    "ibhagwan/fzf-lua",
  },
}
