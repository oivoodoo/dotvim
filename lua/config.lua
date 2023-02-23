require("mason").setup()
require("mason-lspconfig").setup { ensure_installed = { "omnisharp", "lua_ls", "tsserver", "elixirls", "pyright" } }
require("lsp_signature").setup()


local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

local pid = vim.fn.getpid()

local omnisharp_bin = "/Users/oivoodoo/.vscode/extensions/ms-dotnettools.csharp-1.25.4-darwin-arm64/.omnisharp/1.39.4-net6.0/OmniSharp.dll"

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

-- require('lspconfig')['pyright'].setup{
--     on_attach = on_attach,
--     flags = lsp_flags,
-- }

-- require('lspconfig')['tsserver'].setup{
--     on_attach = on_attach,
--     flags = lsp_flags,
-- }

-- require('lspconfig')['elixirls'].setup{
--     on_attach = on_attach,
--     flags = lsp_flags,
-- }

require('lspconfig')['omnisharp'].setup{
    on_attach = on_attach,
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
    flags = lsp_flags,
}

-- require('lspconfig')['lua_ls'].setup{
--     on_attach = on_attach,
--     flags = lsp_flags,
-- }

