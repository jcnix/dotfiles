local status_ok, nullls = pcall(require, "null-ls")
if not status_ok then
	return
end

nullls.setup {
	sources = {
        nullls.builtins.formatting.eslint_d,
        nullls.builtins.diagnostics.eslint_d,
    },
}
