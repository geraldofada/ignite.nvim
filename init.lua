require("ignite.globals")

local plugin_loader = require("ignite.plugins")
local plugins = require("ignite.plugins.list")
local general = require("ignite.general")
local keymaps = require("ignite.keymaps")

plugin_loader.setup(plugins)
general.setup()
keymaps.setup()
