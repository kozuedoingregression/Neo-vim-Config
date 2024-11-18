local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

require("luasnip.loaders.from_vscode").lazy_load()
