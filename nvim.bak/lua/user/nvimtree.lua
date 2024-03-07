-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
-- vim.g.nvim_tree_icons = {
-- 	default = "",
-- 	symlink = "",
-- 	git = {
-- 		unstaged = "",
-- 		staged = "S",
-- 		unmerged = "",
-- 		renamed = "➜",
-- 		deleted = "",
-- 		untracked = "U",
-- 		ignored = "◌",
-- 	},
-- 	folder = {
-- 		default = "",
-- 		open = "",
-- 		empty = "",
-- 		empty_open = "",
-- 		symlink = "",
-- 	},
-- }

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

local function on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	api.config.mappings.default_on_attach(bufnr)

	vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Node"))
	vim.keymap.set("n", "v", api.node.open.vertical, opts("Open: Vertical Split"))
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
	vim.keymap.set("n", "C", api.tree.change_root_to_node, opts("CD"))
end

nvim_tree.setup({
	-- disable_netrw = false,
	-- hijack_netrw = true,
	-- hijack_cursor = true,
	-- update_cwd = true,
	-- diagnostics = {
	-- 	enable = true,
	-- 	icons = {
	-- 		hint = "",
	-- 		info = "",
	-- 		warning = "",
	-- 		error = "",
	-- 	},
	-- },
	-- update_focused_file = {
	-- 	enable = true,
	-- 	update_cwd = true,
	-- 	ignore_list = {},
	-- },
	-- git = {
	-- 	enable = true,
	-- 	ignore = true,
	-- 	timeout = 500,
	-- },
	on_attach = on_attach,
	-- view = {
	-- 	width = 30,
	-- 	hide_root_folder = false,
	-- 	side = "left",
	-- 	number = false,
	-- 	relativenumber = false,
	-- }
})
