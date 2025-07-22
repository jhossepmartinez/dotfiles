return {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = { ".git/" },
	capabilities = {
		experimental = {
			serverStatusNotification = true,
		},
	},
}
