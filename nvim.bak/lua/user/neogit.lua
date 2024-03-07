local status_ok, neogit = pcall(require, "neogit")
if not status_ok then
	return
end

neogit.setup {
	disable_signs = false,
	disable_hint = false,
	auto_refresh = true,
}
