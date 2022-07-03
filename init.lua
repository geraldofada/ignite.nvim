require("ignite.globals")

local plugin_loader = require("ignite.plugins")
local plugins = require("ignite.plugins.list")
local core = require("ignite.core")

plugin_loader.setup(plugins)
