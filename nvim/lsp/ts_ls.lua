return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },
	root_markers = { ".git/" },
	single_file_support = true,
	log_level = vim.lsp.protocol.MessageType.Warning,
}
