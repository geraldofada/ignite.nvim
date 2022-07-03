local M = {}

function M.setup()
  -- GENERAL OPTIONS
  vim.opt.exrc = true

  vim.opt.mouse = 'a'

  vim.opt.splitright = true
  vim.opt.splitbelow = true

  vim.opt.expandtab = true
  vim.opt.tabstop = 2

  vim.opt.shiftwidth = 2
  vim.cmd('filetype plugin indent on')

  vim.opt.number = true

  vim.opt.hls = false
  vim.opt.incsearch = true

  vim.opt.hidden = true

  vim.opt.cmdheight = 1

  vim.opt.updatetime = 500
  vim.opt.backup = false
  vim.opt.swapfile = false
  vim.opt.undofile = true
  vim.opt.undolevels = 9999

  vim.opt.belloff = 'all'

  vim.g.python3_host_prog = '~/.asdf/shims/python'

  -- Leaving this here to enable when the new nvim release comes out
  -- vim.opt.laststatus = 3

  vim.g.netrw_banner = 0
  vim.g.netrw_liststyle = 3
  vim.g.netrw_winsize = 25

  -- FOLD
  vim.wo.foldcolumn = '1'
  vim.wo.foldlevel = 99
  vim.wo.foldenable = true
end

return M
