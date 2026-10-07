return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
    custom_highlights = function(colors)
      local u = require 'catppuccin.utils.colors'
      return {
        CursorLine = {
          bg = u.vary_color({ latte = u.lighten(colors.mantle, 0.10, colors.base) }, u.darken(colors.surface0, 0.14, colors.base)),
        },
      }
    end,
    opts = {
      transparent_background = true,
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
