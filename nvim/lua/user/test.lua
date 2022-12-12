local status_ok, test = pcall(require, "neotest")
if not status_ok then
	return
end

local jest_status_ok, jest = pcall(require, "neotest-jest")
if not jest_status_ok then
	return
end

test.setup {
	adapters = {
		jest {
			-- jestCommand = "./node_modules/.bin/jest",
			-- jestConfigFile = "jest.config.js",
		},
	},
	icons = {
		passed = "✔",
		running = "🗘",
		failed = "✖",
		skipped = "ﰸ",
		unknown = "?",
	}
}
