local general = require("ignite.languages.general")
local js = require("ignite.languages.javascript")
local rust = require("ignite.languages.rust")
local haskell = require("ignite.languages.haskell")
local go = require("ignite.languages.go")
local lua = require("ignite.languages.lua")
local dart = require("ignite.languages.dart")
local treesitter = require("ignite.languages.treesitter")

local M = {}

function M.setup()
  require("nvim-treesitter.configs").setup(treesitter.setup())

  require("nvim-lsp-installer").setup({
    automatic_installation = true,
  })

  local dapui = require("dapui")
  local dap = require("dap")

  dapui.setup()

  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end

  go.dap_setup(require("dap-go"))

  require("cmp").setup(general.setup_cmp)

  require("lspconfig").tsserver.setup(js.ts_setup(general.on_attach, general.capabilities))
  require("lspconfig").efm.setup(js.eslint_setup(general.on_attach))

  require("lspconfig").hls.setup(haskell.setup(general.on_attach, general.capabilities))

  require("lspconfig").gopls.setup(go.lsp_setup(general.on_attach, general.capabilities))

  require("lspconfig").sumneko_lua.setup(lua.setup(general.on_attach, general.capabilities))

  require("flutter-tools").setup(dart.flutter_setup(general.on_attach, general.capabilities))

  require("rust-tools").setup(rust.setup(general.on_attach, general.capabilities))

end

return M
