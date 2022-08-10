local status_ok, colorscheme = pcall(require, "vscode")
if not status_ok then
	return
end

colorscheme.setup {
}
