vim.g.mapleader = " "
vim.opt.nu = ture
vim.opt.scrolloff = 8
vim.opt.relativenumber = true
vim.opt.background = "dark"
vim.cmd('colorscheme oxocarbon')

vim.api.nvim_set_keymap('n', '<C-b>', ':Lex<CR>:vertical resize 25<CR>', {noremap = true, silent = true})
