-- lspconfig names
local lsp_servers = {
	"lua_ls",
	"vimls",

	"pyright",
	"clangd",
	"rust_analyzer",

	-- "eslint",
	"ts_ls",
	"html",
	"cssls",
	"tailwindcss",
	"emmet_language_server",
	-- "angularls",
	-- "gopls", -- Only install when go is installed
	"graphql",
	"prismals",

	"jdtls",
	"phpactor",
	"protols",

	"terraform-ls",
}

return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
}
