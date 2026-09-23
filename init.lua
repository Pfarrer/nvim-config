vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.pack.add({
  "https://github.com/sphamba/smear-cursor.nvim",
  "https://github.com/morhetz/gruvbox",
})
require("smear_cursor").setup({})

vim.opt.background = "dark"
vim.cmd.colorscheme("gruvbox")

local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.splitbelow = true
opt.splitright = true
opt.undofile = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostic list" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank()
  end,
})
