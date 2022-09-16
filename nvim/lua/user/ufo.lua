local status_ok, ufo = pcall(require, "ufo")
if not status_ok then
	return
end

vim.o.foldlevelstart = 99

ufo.setup {
	enable_get_fold_virt_text = true,
	provider_selector = function()
		return { 'treesitter', 'indent' }
	end,
}
