vim.g.mapleader = " "
vim.opt.nu = true
vim.opt.scrolloff = 8
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.clipboard = 'unnamedplus'
require('lualine').setup()

vim.opt.background = "dark"
--vim.cmd('colorscheme onedark')
vim.cmd('colorscheme oxocarbon')
--vim.cmd[[colorscheme abscs]]
--vim.cmd[[colorscheme minimal]]
vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = 'none'})

local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-o>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    }),
})


vim.api.nvim_set_keymap('n', '<C-b>', ':Lex<CR>:vertical resize 25<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-s>', '<CR>:w<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-`>', '<CR>:Ex<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-c>', ':%y+<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-a>', ':w<CR>:!g++-10 -std=c++20 A.cpp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-b>', ':w<CR>:!g++-10 -std=c++20 B.cpp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-c>', ':w<CR>:!g++-10 -std=c++20 C.cpp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-d>', ':w<CR>:!g++-10 -std=c++20 D.cpp<CR>', { noremap = true, silent = true })
