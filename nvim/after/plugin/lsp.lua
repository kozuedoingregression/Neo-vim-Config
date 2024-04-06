local lsp = require('lsp-zero')

require("luasnip.loaders.from_vscode").lazy_load()

lsp.preset('recommended')
lsp.setup()

