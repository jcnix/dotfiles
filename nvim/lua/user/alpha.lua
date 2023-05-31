local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local theme = require('alpha.themes.dashboard').config

alpha.setup(theme)
