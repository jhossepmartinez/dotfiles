--@type vim.lsp.config
return {
	cmd = { "terraform-ls", "serve" },
	filetype = { "terraform", "terraform-vars" },
	root_markers = { ".terraform", ".git" },
}
