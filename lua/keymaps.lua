vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- when in visual mode and something is highlighted,
-- you can move it with 'J' and 'K'. automatically indents as well.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keeps cursor in place when you join lines
vim.keymap.set("n", "J", "mzJ`z")

-- half page jumping with cursor in the center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search terms remain in the middle of the editor
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- can reuse the same copy pasta over and over without
-- clearing the buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- yank stuff over to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- do nothing when 'Q' lol
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- shortcut to go to init config file
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/init.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- terminal window mappings
function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    local keymap = vim.keymap
    keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
