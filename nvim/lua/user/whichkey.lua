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
		t = {
			name = "Telescope"
		},
		h = {
			name = "Gitsigns",
			S = { "Stage buffer" },
			R = { "Reset buffer" },
			u = { "Undo stage hunk" },
			p = { "Preview hunk" },
			d = { "Diff this" },
			D = { "Diff this ~" },
			b = { "Blame line" },
		},
		w = {
			name = "Window"
		},
		x = {
			name = "Trouble"
		},
	}
})
