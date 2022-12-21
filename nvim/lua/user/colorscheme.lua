local status_ok, colorscheme = pcall(require, "onenord")
if not status_ok then
	return
end

colorscheme.setup {
	fade_nc = true,
	styles = {
		diagnostics = "undercurl"
	},
}
