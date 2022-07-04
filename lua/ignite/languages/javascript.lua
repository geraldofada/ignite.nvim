-- eslint config thanks to:
-- https://phelipetls.github.io/posts/configuring-eslint-to-work-with-neovim-lsp/

local _eslint_config = {
  lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
  lintStdin = true,
  lintFormats = { "%f:%l:%c: %m" },
  lintIgnoreExitCode = true,
  formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  formatStdin = true
}

local function _eslint_config_exists()
  local eslintrc = vim.fn.glob(".eslintrc*", 0, 1)

  if not vim.tbl_isempty(eslintrc) then
    return true
  end

  return false
end

local M = {}

function M.ts_setup(on_attach, capabilities)
  return {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

function M.eslint_setup(on_attach)
  return {
    on_attach = on_attach,
    root_dir = function()
      if not _eslint_config_exists() then
        return nil
      end
      return vim.fn.getcwd()
    end,
    settings = {
      languages = {
        javascript = { _eslint_config },
        javascriptreact = { _eslint_config },
        ["javascript.jsx"] = { _eslint_config },
        typescript = { _eslint_config },
        ["typescript.tsx"] = { _eslint_config },
        typescriptreact = { _eslint_config }
      }
    },
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescript.tsx",
      "typescriptreact"
    },
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  }
end

return M
