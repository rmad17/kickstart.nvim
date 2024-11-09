-- Lualine is a lightweight statusline plugin
-- https://github.com/nvim-lualine/lualine.nvim
local colors = {
  bg = '#202328',
  fg = '#bbc2cf',
  yellow = '#ECBE7B',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#98be65',
  orange = '#FF8800',
  violet = '#a9a1e1',
  magenta = '#c678dd',
  blue = '#51afef',
  red = '#ec5f67',
  black = '#383a42',
  white = '#f3f3f3',
}

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      section_separators = { left = '', right = '' },
      -- section_separators = { left = '', right = '' },
      -- component_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' },
      -- section_separators = '',
      -- component_separators = '',
      theme = 'auto',
    },
    sections = {
      lualine_a = {
        {
          'mode',
          icon = '',
        },
      },
      lualine_b = {
        'branch',
        {
          'diff',
          symbols = { added = ' ', modified = '󰜥 ', removed = ' ' },
          diff_color = {
            added = { fg = colors.green },
            modified = { fg = colors.orange },
            removed = { fg = colors.red },
          },
        },
      },
      lualine_c = {
        {
          'diagnostics',
          sections = { 'error', 'warn', 'info', 'hint' },
          diagnostics_color = {
            -- Same values as the general color option can be used here.
            error = { fg = colors.red }, -- Changes diagnostics' error color.
            warn = { fg = colors.yellow }, -- Changes diagnostics' warn color.
            info = { bg = colors.cyan, fg = colors.white }, -- Changes diagnostics' info color.
            hint = { bg = colors.green, fg = colors.white }, -- Changes diagnostics' hint color.
          },
          symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
        },
        {
          'filename',
          file_status = true, -- displays file status (readonly status, modified status)
          path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
        },
        'filesize',
      },
      lualine_x = {
        'filetype',
        'encoding',
      },
      lualine_y = { { 'datetime', style = '%H:%M' }, 'progress' },
      lualine_z = { 'location', 'selectioncount' },
    },
  },
}
