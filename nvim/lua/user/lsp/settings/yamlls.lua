local schemas = {
	{
		description = "Cloudformation file",
		filematch = {
			"*.cf.json",
			"*.cf.yml",
			"*.cf.yaml",
			"cloudformation.json",
			"cloudformation.yml",
			"cloudformation.yaml",
		},
		url = "https://raw.githubusercontent.com/awslabs/goformation/master/schema/cloudformation.schema.json",
	},
	{
		description = "Github Workflows",
		filematch = {
			"/.github/workflows/*"
		},
		url = "https://json.schemastore.org/github-workflow.json",
	},
}

local opts = {
	settings = {
		yaml = {
			schemas = schemas,
		},
	},
	setup = {
		commands = {
			Format = {
				function()
					vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line "$", 0 })
				end,
			}
		}
	}
}

return opts
