require("ignite.globals")

local plugin_loader = require("ignite.plugins")
local plugins = require("ignite.plugins.list")

plugin_loader.setup(plugins)

-- TODO(Geraldo): maybe create a custom command (IgniteSync?) to run PackerSync and initialize all the configs?
if not plugin_loader.bootstrap_ok then
  vim.notify("First time use, please run :PackerSync and restart nvim")
  return
end

require("ignite.general").setup()
require("ignite.keymaps").setup()
require("ignite.languages").setup()
