-- set some nice chonky keybinds and features :)

-- set chonky cursor for everything
vim.opt.guicursor = ""

-- line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- for 4-space indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- turn off line-wraps
vim.opt.wrap = false

-- store file history backups in ~/.vim/undodir to be used by undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand('~/.vim/undodir')
vim.opt.undofile = true

-- disable search text highlighting
vim.opt.hlsearch = false

-- enable incremental search
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
