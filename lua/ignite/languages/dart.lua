local M = {}

function M.flutter_setup(on_attach, capabilities)
  return {
    debugger = {
      enabled = true,
    },
    flutter_lookup_cmd = "asdf where flutter",
    lsp = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  }
end

return M
