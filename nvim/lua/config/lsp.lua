vim.lsp.enable({
	"lua_ls",
	"ts_ls",
	"graphql",
	"html",
	"cssls",
	"emmet_ls",
	"vimls",
	"prismals",
	"tailwind",
	"protols",
	"eslint",
	"pyright",
	"rust_analyzer",
	"gopls",
	"terraformls",
})

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = true,
	severity_sort = true,
	float = {
		format = function(diagnostic)
			return "▌" .. diagnostic.message
		end,
	},
})
