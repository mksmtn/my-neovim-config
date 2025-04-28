vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("mariasolos/big_file", { clear = true }),
  desc = "Disable features in big files",
  pattern = "bigfile",
  callback = function(args)
    vim.schedule(function()
      vim.bo[args.buf].syntax = vim.filetype.match({ buf = args.buf }) or ""
    end)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("mariasolos/close_with_q", { clear = true }),
  desc = "Close with <q>",
  pattern = {
    "git",
    "help",
    "man",
    "qf",
    "query",
    "scratch",
  },
  callback = function(args)
    vim.keymap.set("n", "q", "<cmd>quit<cr>", { buffer = args.buf })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("mariasolos/treesitter_folding", { clear = true }),
  desc = "Enable Treesitter folding",
  callback = function(args)
    local bufnr = args.buf

    -- Enable Treesitter folding when not in huge files and when Treesitter
    -- is working.
    if vim.bo[bufnr].filetype ~= "bigfile" and pcall(vim.treesitter.start, bufnr) then
      vim.api.nvim_buf_call(bufnr, function()
        vim.wo[0][0].foldmethod = "expr"
        vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.cmd.normal("zx")
      end)
    else
      -- Else just fallback to using indentation.
      vim.wo[0][0].foldmethod = "indent"
    end
  end,
})
