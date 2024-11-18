return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
    opts = {
      transparent_background = true,
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
