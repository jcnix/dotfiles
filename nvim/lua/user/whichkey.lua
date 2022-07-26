local status_ok, whichkey = pcall(require, "which-key")
if not status_ok then
	return
end

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
		w = {
			name = "Window"
		},
		x = {
			name = "Trouble"
		},
	}
})
