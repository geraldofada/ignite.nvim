require("ignite.globals")

local plugin_loader = require("ignite.plugins")
local plugins = require("ignite.plugins.list")
local general = require("ignite.general")
local keymaps = require("ignite.keymaps")

plugin_loader.setup(plugins)
general.setup()
keymaps.setup()

-- TODO(Geraldo): maybe create a custom command (IgniteSync?) to run PackerSync and initialize all the configs?
if not plugin_loader.bootstrap_ok then
  vim.notify("First time use, please run :PackerSync and restart nvim")
  return
end
