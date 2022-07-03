local M = {}

local function _map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.setup()
  -- GLOBAL KEYMAPS
  vim.g.mapleader = ' '

  -- split to left
  _map('n', '<leader>sl', ':vs<CR>')
  -- quit
  _map('n', '<leader>wd', ':q<CR>')
  -- file save
  _map('n', '<leader>fs', ':w<CR>')
  -- navigate left
  _map('n', '<leader>wl', '<C-w>l')
  -- navidate right
  _map('n', '<leader>wh', '<C-w>h')
  -- navigate up
  _map('n', '<leader>wk', '<C-w>k')
  -- navidate down
  _map('n', '<leader>wj', '<C-w>j')
  -- clear everything
  _map('n', '<leader>wo', '<C-w>o')
  -- maximize
  _map('n', '<leader>wm', ':MaximizerToggle!<CR>')
  -- zen mode
  _map('n', '<leader>mm', ':ZenMode<CR>')

  -- telescope
  -- find file
  _map('n', '<leader><leader>', ':lua find_files_project()<CR>')
  -- search buffers
  _map('n', '<leader>ss', [[:lua require('telescope.builtin').live_grep()<CR>]])
  -- search history
  _map('n', '<leader>sh', [[:lua require('telescope.builtin').search_history()<CR>]])
  -- search buffersunder cursor
  _map('n', '<leader>*', [[:lua require('telescope.builtin').grep_string()<CR>]])
  -- open buffers
  _map('n', '<leader>bb', [[:lua require('telescope.builtin').buffers()<CR>]])
  -- open command history
  _map('n', '<F1>', [[:lua require('telescope.builtin').command_history()<CR>]])
  -- git branches
  _map('n', '<leader>gb', [[:lua require('telescope.builtin').git_branches()<CR>]])
  -- git commits
  _map('n', '<leader>gc', [[:lua require('telescope.builtin').git_commits()<CR>]])
  -- git status
  _map('n', '<leader>gs', [[:lua require('telescope.builtin').git_status()<CR>]])

  -- toggle between buffer
  _map('n', '<leader>bl', '<C-^>')
  -- undo tree
  _map('n', '<F5>', ':UndotreeToggle<CR>')
  -- git
  _map('n', '<leader>gg', ':Git<CR>')
  -- window tree
  -- map('n', '<leader>ff', ':Lex<CR>')
  _map('n', '<leader>ff', ':RnvimrToggle<CR>')
  -- stop sneak from hijacking , and ;
  _map('', 'gs', '<Plug>Sneak_;')
  _map('', 'gS', '<Plug>Sneak_,')

  -- harpoon
  _map('n', '<leader>1', [[:lua require('harpoon.ui').nav_file(1)<CR>]]);
  _map('n', '<leader>2', [[:lua require('harpoon.ui').nav_file(2)<CR>]]);
  _map('n', '<leader>3', [[:lua require('harpoon.ui').nav_file(3)<CR>]]);
  _map('n', '<leader>4', [[:lua require('harpoon.ui').nav_file(4)<CR>]]);
  _map('n', '<leader>5', [[:lua require('harpoon.ui').nav_file(5)<CR>]]);
  _map('n', '<leader>ha', [[:lua require('harpoon.mark').add_file()<CR>]]);
  _map('n', '<leader>hh', [[:lua require('harpoon.ui').toggle_quick_menu()<CR>]]);
end

return M
