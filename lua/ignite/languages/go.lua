local M = {}

function M.lsp_setup(on_attach, capabilities)
  return {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  }
end

function M.dap_setup(dap)
  dap.setup()
end

return M
