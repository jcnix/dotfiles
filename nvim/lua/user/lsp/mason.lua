local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local status_ok, masonlsp = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end

mason.setup()

masonlsp.setup {
	automatic_installation = true
}

local opts = {
	on_attach = require("user.lsp.handlers").on_attach,
	capabilities = require("user.lsp.handlers").capabilities,
}

local lspconfig = require('lspconfig')

lspconfig.tsserver.setup(opts)

-- lspconfig.eslint.setup(opts)

local sumneko_opts = require("user.lsp.settings.sumneko_lua")
lspconfig.sumneko_lua.setup(vim.tbl_deep_extend("force", sumneko_opts, opts))

local jsonls_opts = require("user.lsp.settings.jsonls")
local yamlls_opts = require("user.lsp.settings.yamlls")
lspconfig.jsonls.setup(vim.tbl_deep_extend("force", jsonls_opts, opts))
lspconfig.yamlls.setup(vim.tbl_deep_extend("force", yamlls_opts, opts))

lspconfig.cssls.setup(opts)
lspconfig.cssmodules_ls.setup(opts)
