local status_ok, whichkey = pcall(require, "which-key")
if not status_ok then
	return
end

whichkey.setup {}

whichkey.register({
	["<leader>"] = {
		b = {
			name = "buffer",
			b = { function() require 'telescope.builtin'.buffers() end, "Buffers" },
			g = { "<cmd>BufferLinePick<cr>", "Pick Buffer" },
			d = { "<cmd>Bdelete<cr>", "Delete Buffer" },
			D = { "<cmd>Bdelete!<cr>", "Delete! Buffer" },
		},
		e = { "<cmd>NvimTreeToggle<CR>", "NvimTree" },
		f = {
			name = "telesceope",
			f = { function() require 'telescope.builtin'.find_files() end, "Find Files" },
			g = { function() require 'telescope.builtin'.live_grep() end, "Grep" },
			b = { function() require 'telescope.builtin'.current_buffer_fuzzy_find() end, "Find In Buffer" },
			h = { function() require 'telescope.builtin'.command_history() end, "Command History" },
			m = { function() require 'telescope.builtin'.keymaps() end, "Keymaps" },
			p = { function() require 'telescope.builtin'.commands() end, "Commands" },
			w = { function() require 'telescope.builtin'.grep_string() end, "Find Word Under Cursor" },
		},
		h = {
			name = "git",
			h = { function() require 'telescope.builtin'.git_status() end, "Status" },
			g = { function() require 'telescope.builtin'.git_commits() end, "Commits" },
			l = { function() require 'telescope.builtin'.git_bcommits() end, "File History" },
			c = { function() require 'telescope.builtin'.git_branches() end, "Branches" },
			y = { function() require 'gitlinker'.get_buf_range_url('n') end, "Get URL" },
			Y = { function() require 'gitlinker'.get_buf_range_url('n',
					{ action_callback = require 'gitlinker.actions'.open_in_browser })
			end, "Get URL" },
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
			name = "test",
			t = { function() require 'neotest'.run.run() end, "Run Nearest Test" },
			l = { function() require 'neotest'.run.run_last() end, "Run Last Test" },
			f = { function() require 'neotest'.run.run(vim.fn.expand('%')) end, "Run Test File" },
			s = { function() require 'neotest'.summary.toggle() end, "Test Summary" },
			o = { function() require 'neotest'.output.open({ enter = true })
			end, "Open Test Output" },
		},
		w = {
			name = "window",
			k = { "<cmd>wincmd k<CR>", "Window Up" },
			j = { "<cmd>wincmd j<CR>", "Window Down" },
			h = { "<cmd>wincmd h<CR>", "Window Left" },
			l = { "<cmd>wincmd l<CR>", "Window Right" },
		},
		x = {
			name = "trouble",
			x = { "<cmd>TroubleToggle<cr>", "Trouble" },
			w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics" },
			d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics" },
			r = { "<cmd>TroubleToggle lsp_references<cr>", "LSP References" },
		},
		U = { function() require 'ufo'.peekFoldedLinesUnderCursor() end, "Preview Fold" },
		["<leader>"] = {
			name = "hop",
			w = { "<cmd>HopWord<cr>", "Word" },
			j = { "<cmd>HopLineAC<cr>", "Line Down" },
			k = { "<cmd>HopLineBC<cr>", "Line Up" },
			f = { "<cmd>HopChar1<cr>", "Find Char" },
		},
	}
}, {
	mode = 'n'
})

whichkey.register({
	["<leader>"] = {
		h = {
			y = { function() require 'gitlinker'.get_buf_range_url('v') end, "Get URL" },
			Y = { function() require 'gitlinker'.get_buf_range_url('v',
					{ action_callback = require 'gitlinker.actions'.open_in_browser })
			end, "Get URL" },
		}
	}
}, {
	mode = 'v'
})
