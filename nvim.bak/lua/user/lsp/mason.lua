local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local lsp_status_ok, masonlsp = pcall(require, "mason-lspconfig")
if not lsp_status_ok then
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

lspconfig.tsserver.setup({
	capabilities = opts.capabilities,
	on_attach = function (client, bufnr)
		opts.on_attach(client, bufnr)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
	end
})

lspconfig.eslint.setup({
	capabilities = opts.capabilities,
	on_attach = function (client, bufnr)
		opts.on_attach(client, bufnr)
		client.server_capabilities.documentFormattingProvider = true
	end
})

local sumneko_opts = require("user.lsp.settings.sumneko_lua")
lspconfig.lua_ls.setup(vim.tbl_deep_extend("force", sumneko_opts, opts))

local jsonls_opts = require("user.lsp.settings.jsonls")
local yamlls_opts = require("user.lsp.settings.yamlls")
lspconfig.jsonls.setup(vim.tbl_deep_extend("force", jsonls_opts, opts))
lspconfig.yamlls.setup(vim.tbl_deep_extend("force", yamlls_opts, opts))

lspconfig.cssls.setup(opts)
lspconfig.cssmodules_ls.setup(opts)
