local general = require("ignite.languages.general")
local js = require("ignite.languages.javascript")
local rust = require("ignite.languages.rust")
local haskell = require("ignite.languages.haskell")
local go = require("ignite.languages.go")
local lua = require("ignite.languages.lua")
local dart = require("ignite.languages.dart")

local M = {}

function M.setup()
  require("nvim-lsp-installer").setup({
    automatic_installation = true,
  })
  require("cmp").setup(general.setup_cmp)

  require("lspconfig").tsserver.setup(js.ts_setup(general.on_attach, general.capabilities))
  require("lspconfig").efm.setup(js.eslint_setup(general.on_attach))

  require("rust-tools").setup(rust.setup(general.on_attach, general.capabilities))

  require("lspconfig").hls.setup(haskell.setup(general.on_attach, general.capabilities))

  require("lspconfig").gopls.setup(go.setup(general.on_attach, general.capabilities))

  require("lspconfig").lua.setup(lua.setup(general.on_attach, general.capabilities))

  require("flutter-tools").setup(dart.flutter_setup(general.on_attach, general.capabilities))
end

return M
