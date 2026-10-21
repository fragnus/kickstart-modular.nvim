-- OmniSharp returns token names containing spaces, which breaks semantic highlighting.
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('csharp-semantic-tokens', { clear = true }),
  callback = function(event)
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    local provider = client and client.name == 'omnisharp' and client.server_capabilities.semanticTokensProvider
    if not provider then
      return
    end
    for _, list in ipairs { provider.legend.tokenModifiers, provider.legend.tokenTypes } do
      for i, v in ipairs(list) do
        list[i] = v:gsub(' ', '_')
      end
    end
  end,
})

return {}
