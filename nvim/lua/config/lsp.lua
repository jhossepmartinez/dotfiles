vim.lsp.enable({ "lua_ls", "ts_ls", "graphql", "html", "cssls", "emmet_ls", "vimls", "prismals", "tailwind", "eslint" })

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
