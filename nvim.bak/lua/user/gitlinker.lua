local status_ok, gitlinker = pcall(require, "gitlinker")
if not status_ok then
	return
end

gitlinker.setup {
	callbacks = {
		["github.deere.com"] = require("gitlinker.hosts").get_github_type_url
	},
	mappings = nil,
}
