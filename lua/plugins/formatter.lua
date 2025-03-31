return {
  {
    "mhartington/formatter.nvim",
    config = function()
      local formatter_prettier = { require("formatter.defaults.prettier") }
      require("formatter").setup({
        filetype = {
          javascript = formatter_prettier,
          javascriptreact = formatter_prettier,
          typescript = formatter_prettier,
          typescriptreact = formatter_prettier,
          html = formatter_prettier,
          lua = { require("formatter.filetypes.lua").stylua },
          ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace,
          },
        },
        try_node_modules = true,
      })
      local augroup = vim.api.nvim_create_augroup
      local autocmd = vim.api.nvim_create_autocmd
      augroup("__formatter__", { clear = true })
      autocmd("BufWritePost", {
        group = "__formatter__",
        command = ":FormatWrite",
      })
    end,
  },
}
