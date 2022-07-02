local M = {
  { 'wbthomason/packer.nvim' },

  -- functionalities
  { 'nvim-lua/plenary.nvim' },
  {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-telescope/telescope-fzy-native.nvim' },
      { 'nvim-treesitter/nvim-treesitter' }
    }
  },
  { 'mbbill/undotree' },
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-eunuch' },
  { 'airblade/vim-gitgutter' },
  { 'justinmk/vim-sneak' },
  { 'unblevable/quick-scope' },
  { 'tpope/vim-commentary' },
  { 'ThePrimeagen/harpoon' },
  { 'kevinhwang91/rnvimr' },
  { 'psliwka/vim-smoothie' },
  {
    'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async'
  },

  -- languages stuff and lsp
  { 'sheerun/vim-polyglot' },
  { 'neovim/nvim-lspconfig' },
  { 'williamboman/nvim-lsp-installer' },
  { 'nvim-treesitter/nvim-treesitter' },
  { 'JoosepAlviste/nvim-ts-context-commentstring' },
  {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-cmdline' },
      { 'L3MON4D3/LuaSnip' },
    }
  },
  { 'akinsho/flutter-tools.nvim' },

  -- fluffy
  { 'EdenEast/nightfox.nvim' },
  { 'hoob3rt/lualine.nvim' },
  { 'folke/zen-mode.nvim' },
  { 'szw/vim-maximizer' },
}

return M
