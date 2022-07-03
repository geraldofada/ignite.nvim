require("ignite.globals")

local plugin_loader = require("ignite.plugins")
local plugins = require("ignite.plugins.list")

plugin_loader.setup(plugins)
