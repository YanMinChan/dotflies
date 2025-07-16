require("custom.general") -- custom
require("config.lazy") -- plugins
require("lsp.lspconfig") -- lsp
require("lsp.diagnostic") -- diagnostic

-- keymaps
local keymaps = require("custom.keymaps")
keymaps.basic()
keymaps.telescope()

