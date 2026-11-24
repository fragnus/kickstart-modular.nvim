-- Renders markdown in the buffer
-- https://github.com/MeanderingProgrammer/render-markdown.nvim

return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' },
  ft = { 'markdown' },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
}
