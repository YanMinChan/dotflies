local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the ls to recognize `vim` global
                globals = {
                    'vim',
                    'require'
                },
            },
            hint = { enable = true },
            signatureHelp = { enable = true },
        },
    },
})
