local M = {}

function M.setup()
  require("ignite.discovery.telescope").setup()
  require("ignite.discovery.movements").setup()
  require("ignite.discovery.file_explorer").setup()
end

return M
