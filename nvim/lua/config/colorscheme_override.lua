local M = {}
function M.transparent_override()
	local highlights = {
		"Normal",
		"NormalNC",
		"LineNr",
		-- "LineNr", "Folded", "NonText",
		-- "SpecialKey", "VertSplit",
		"EndOfBuffer",
		-- 'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier', 'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function', 'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText', 'SignColumn', 'CursorLineNr', 'EndOfBuffer', 'MsgArea', 'CursorLine',
		"SignColumn",

		-- Diagnostics
		"DiagnosticHint",
		"DiagnosticOk",
		"DiagnosticWarn",
		"DiagnosticError",
		"DiagnosticInfo",
        "CursorLine",
        "CursorLineNr",

		-- Neotree highlights
		"NeoTreeCursorLine",
		"NeoTreeNormal",
		"NeoTreeNormalNC",
		-- "NeoTreeWinSeparator",
		"WinSeparator",
		"neotreegitmodified",

		-- Fold / Ufo
		"FoldColumn",

		-- Bufferline
		"Bufferlinefill",
		"Bufferlinebufferselected",
        "BufferLineDuplicateSelected",
        "BufferLineDuplicateVisible",
        "BufferLineDuplicate",

	}
	for _, highlight in pairs(highlights) do
		vim.cmd("hi " .. highlight .. " guibg=none ctermbg=none")
	end
end

function M.colorscheme_addon()
	-- vim.cmd("hi String guifg=#7fc79b")
	-- vim.cmd("hi Structure guifg=#cdcfe4")
	-- vim.cmd("hi Normal guifg=#98a2b0")
	vim.cmd("hi Comment guifg=#8893a7")
	vim.cmd("hi LineNr guifg=#c0c8d8")
	-- vim.cmd("hi Statement guifg=#9c9fc9")
end

function M.colorscheme_default()
	vim.cmd("hi SignColumn guibg=none ctermbg=none")
	vim.cmd("hi CursorLine cterm=none")
    vim.cmd("hi LineNr guifg=#8893a7")
    vim.cmd("hi CursorLineNr guifg=#f2f2f2")
    vim.cmd("hi BufferLineDuplicate guifg=#8893a7")
    vim.cmd("hi BufferLineDuplicateVisible guifg=#8893a7")
    vim.cmd("hi BufferLineDuplicateSelected guifg=#8893a7")
	-- vim.cmd("hi Comment guifg=#697281")
end

return M
