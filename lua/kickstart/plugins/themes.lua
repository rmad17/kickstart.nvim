return {
  { 'rebelot/kanagawa.nvim', name = 'kanagawa' },
  { 'neanias/everforest-nvim', version = false, lazy = false, priority = 1000 },
  { 'akinsho/horizon.nvim', version = '*' },
  { 'ellisonleao/gruvbox.nvim', priority = 1000, config = true },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { 'EdenEast/nightfox.nvim' },
  { 'bluz71/vim-nightfly-colors', name = 'nightfly', lazy = false, priority = 1000 },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
 -- Theme styler
  {
    'folke/styler.nvim',
    config = function()
      require('styler').setup {
        themes = {
          markdown = { colorscheme = 'gruvbox' },
          help = { colorscheme = 'catppuccin-mocha', background = 'dark' },
          python = { colorscheme = 'everforest' },
          go = { colorscheme = 'tokyonight' },
        },
      }
    end,
  },
}
