local status_ok, test = pcall(require, "nvim-test")
if not status_ok then
	return
end

test.setup {
	term = "toggleterm",
	termOpts = {
		direction = "float",
	},
}

require('nvim-test.runners.jest'):setup {
	args = { "--config=jest.config.unit.js", "--no-coverage" }
}

