local M = {}

function M.setup(on_attach, capabilities)
  return {
    server = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  }
end

return M
