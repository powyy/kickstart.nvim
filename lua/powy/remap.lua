-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fm", vim.cmd.Format, { desc = 'Format the file using :Format' })
vim.keymap.set("n", "<C-;>", vim.cmd.bprevious, { desc = 'Go back to prevoius buffer' })
vim.keymap.set("n", "<C-'>", vim.cmd.bnext, { desc = 'Go back to prevoius buffer' })
vim.keymap.set("v", "z", ":m '>+1<CR>gv=gv", { desc = 'kinda like alt arrow up and down in vscode' })
vim.keymap.set("v", "x", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z",
  { desc = 'appends the current line above while the cursor is till in the beginning of the line?' })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>o", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("i", "<C-q>", "<Esc>")
