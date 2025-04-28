-- Switch between windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to the left window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to the bottom window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to the top window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to the right window", remap = true })

-- Escape and save changes
vim.keymap.set({ "s", "i", "n", "v" }, "<C-s>", "<esc>:w<cr>", { desc = "Exit insert mode and save changes." })
vim.keymap.set({ "s", "i", "n", "v" }, "<C-S-s>", "<esc>:wa<cr>", { desc = "Exit insert mode and save all changes." })

-- Floating terminal
vim.keymap.set({ "n", "t" }, "<leader>T", function()
  require("float_term").float_term("fish", { cwd = vim.fn.expand("%:p:h") })
end, { desc = "Toggle floating terminal" })
