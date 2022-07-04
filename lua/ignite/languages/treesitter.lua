local M = {}

function M.setup()
  return {
    -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = "all",

    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- List of parsers to ignore installing
    -- ignore_install = { "javascript" },

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
      -- disable = { "c", "rust" },
    },
    context_commentstring = {
      enable = true,
    }
  }
end

return M
