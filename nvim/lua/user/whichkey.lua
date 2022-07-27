local status_ok, whichkey = pcall(require, "which-key")
if not status_ok then
	return
end

local opts = { noremap = true, silent = true }

whichkey.setup {}

whichkey.register({
	["<leader>"] = {
		b = {
			name = "Buffer"
		},
		f = {
			name = "Telescope"
		},
		h = {
			name = "Git",
			S = { "Stage buffer" },
			R = { "Reset buffer" },
			u = { "Undo stage hunk" },
			p = { "Preview hunk" },
			d = { "Diff this" },
			D = { "Diff this ~" },
			b = { "Blame line" },
			B = { "Toggle blame line" },
		},
		t = {
			name = "Test",
			t = { function () require'neotest'.run.run() end, "Run Nearest Test" },
			l = { function () require'neotest'.run.run_last() end, "Run Last Test" },
			f = { function () require'neotest'.run.run(vim.fn.expand('%')) end, "Run Test File" },
			s = { function () require'neotest'.summary.toggle() end, "Test Summary" },
			o = { function () require'neotest'.output.open({ enter = true}) end, "Open Test Output" },
		},
		w = {
			name = "Window"
		},
		x = {
			name = "Trouble"
		},
	}
})
