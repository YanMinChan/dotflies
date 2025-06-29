-- general setup
require("custom.general")
-- lazy nvim and plugins
require("config.lazy")

-- keymaps
local keymaps = require("custom.keymaps")
keymaps.basic()
keymaps.telescope()
