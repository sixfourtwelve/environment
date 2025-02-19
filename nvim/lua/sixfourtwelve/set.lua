vim.o.termguicolors = true
vim.o.number = true
vim.o.laststatus = 3
vim.o.numberwidth = 1
vim.o.relativenumber = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.shiftround = true
vim.o.mouse = "a"
vim.o.wrap = true

vim.o.signcolumn = "yes"
vim.o.syntax = "on"

vim.opt.smartindent = false

vim.opt.wrap = true

vim.o.foldlevel = 99
vim.o.foldmethod = "indent"
vim.o.foldenable = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 5
--vim.opt.colorcolumn = '80'
