local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup {
	ensure_installed = { "lua", "javascript", "typescript", "tsx", "html", "css", "json", "scss", "yaml", "vim", "markdown", "bash" },
	sync_install = false,
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	rainbow = {
		enable = true,
		-- disable = { "jsx", "tsx" },
		extended_mode = false,
		max_file_lines = nil,
		colors = {
			"#d79921",
			"#b16286",
			"#a89984",
			"#689d6a",
			"#d65d0e",
			"#458588",
			"#cc241d",
		},
	}
}
