return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
      local C = require('catppuccin.palettes').get_palette 'mocha'
      local O = require('catppuccin').options
      local transparent_bg = O.transparent_background and 'NONE' or C.mantle

      local catppuccin = {
        inactive = {
          a = { fg = C.blue, bg = transparent_bg, gui = 'bold' },
          b = { fg = C.surface1, bg = transparent_bg, gui = 'bold' },
          c = { fg = C.overlay0, bg = transparent_bg },
        },
        visual = {
          a = { fg = C.base, bg = C.mauve, gui = 'bold' },
          b = { fg = C.mauve, bg = C.surface0 },
        },
        replace = {
          a = { fg = C.base, bg = C.red, gui = 'bold' },
          b = { fg = C.red, bg = C.surface0 },
        },
        normal = {
          a = { fg = C.mantle, bg = C.blue, gui = 'bold' },
          b = { fg = C.blue, bg = C.surface0 },
          c = { fg = C.text, bg = transparent_bg },
        },
        insert = {
          a = { fg = C.base, bg = C.green, gui = 'bold' },
          b = { fg = C.green, bg = C.surface0 },
        },
        command = {
          a = { fg = C.base, bg = C.peach, gui = 'bold' },
          b = { fg = C.peach, bg = C.surface0 },
        },
        terminal = {
          a = { bg = C.green, fg = C.base, gui = 'bold' },
          b = { bg = C.surface0, fg = C.green },
        },
      }

      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = catppuccin,
          component_separators = '',
          section_separators = { left = '', right = '' },
        },
        sections = {
          lualine_a = {
            {
              'mode',
              separator = { left = '' },
              icon = { '' },
            },
          },
          lualine_b = { 'filename' },
          lualine_c = { 'branch' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = {
            { 'location', separator = { right = '' } },
          },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        extensions = {},
      }
    end,
  },
}
