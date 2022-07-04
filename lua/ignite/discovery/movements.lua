local M = {}

function M.setup()
  -- quickscope
  vim.g.qs_highlight_on_keys = { 'f', 'F', 't', 'T' }
  vim.cmd([[
  augroup qs_colors
    autocmd!
    autocmd ColorScheme * highlight QuickScopePrimary guifg='#458588' gui=underline ctermfg=155 cterm=underline
    autocmd ColorScheme * highlight QuickScopeSecondary guifg='#b16286' gui=underline ctermfg=81 cterm=underline
  augroup END
  ]])

  -- sneak
  vim.g['sneak#label'] = 1
  vim.g['sneak#use_ic_scs'] = 1
  vim.g['sneak#s_next'] = 1
end

return M
