local util = vim.lsp.util

return {
	cmd = { "graphql-lsp", "server", "-m", "stream" },
	filetypes = { "graphql", "typescriptreact", "javascriptreact" },
	-- root_dir = function(bufnr, on_dir)
	-- 	local fname = vim.api.nvim_buf_get_name(bufnr)
	-- 	on_dir(util.root_pattern(".graphqlrc*", ".graphql.config.*", "graphql.config.*")(fname))
	-- end,
	root_markers = { ".graphqlrc*", ".graphql.config.*", "graphql.config.*" },
}
