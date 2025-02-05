local M = {}
function M.transparent_override()
	local highlights = {
		-- base
		"Normal",
		"NormalNC",
		"LineNr",
		"EndOfBuffer",
		"SignColumn",
		"CursorLine",
		"CursorLineNr",

		-- Diagnostics
		"DiagnosticHint",
		"DiagnosticOk",
		"DiagnosticWarn",
		"DiagnosticError",
		"DiagnosticInfo",

		-- Diagnostic Status Line
		"DiagnosticSignError",
		"DiagnosticSignHint",
		"DiagnosticSignInfo",
		"DiagnosticSignOk",
		"DiagnosticSignWarn",

		-- @plugin: Neotree
		"NeoTreeCursorLine",
		"NeoTreeNormal",
		"NeoTreeNormalNC",
		-- "NeoTreeWinSeparator",
		"WinSeparator",
		"neotreegitmodified",

		-- @plugin: Fold / Ufo
		"FoldColumn",
		"Folded",

		-- @plugin: Bufferline
		"Bufferlinefill",
		"Bufferlinebufferselected",
		"BufferLineDuplicateSelected",
		"BufferLineDuplicateVisible",
		"BufferLineDuplicate",
		-- @plugin: Cmp
		-- "Pmenu",

		-- @plugin: Gitsigns
		"GitSignsAdd",
		"GitSignsChange",
		"GitSignsDelete",
		"GitSignsStagedAdd",
		"GitSignsStagedChange",
		"GitSignsStagedDelete",

		-- @plugin: Mini.pick
		"MiniPickNormal",
	}
	for _, highlight in pairs(highlights) do
		vim.cmd("hi " .. highlight .. " guibg=none ctermbg=none")
	end
end

function M.colorscheme_addon()
	-- vim.cmd("hi String guifg=#7fc79b")
	-- vim.cmd("hi Structure guifg=#cdcfe4")
	-- vim.cmd("hi Normal guifg=#98a2b0")
	-- vim.cmd("hi Comment guifg=#8893a7")
	vim.cmd("hi LineNr guifg=#c0c8d8")
	vim.cmd("hi CmpNormal guibg=#552316")
	vim.cmd("hi CmpItemAbbr guifg=#f8eecb")
	vim.cmd("hi CmpSelected guifg=#93b189 guibg=#652b22")
	vim.cmd("hi WinSeparator guifg=#c0c8d8")
	vim.cmd("hi BufferLineOffsetSeparator guifg=link='WinSeparator'")
	-- vim.cmd("hi Statement guifg=#9c9fc9")
	vim.cmd("hi MiniPickMatchCurrent guifg=#eee8d5 guibg=#586e75")
	vim.cmd("hi GitSignsAdd guifg=#859900")
end

function M.colorscheme_default()
	vim.cmd("hi SignColumn guibg=none ctermbg=none")
	vim.cmd("hi CursorLine cterm=none")
	-- vim.cmd("hi LineNr guifg=#8893a7")
	vim.cmd("hi FoldColumn guifg=#8893a7")
	vim.cmd("hi CursorLineNr guifg=#f2f2f2")
	vim.cmd("hi CursorLineFold guifg=#f2f2f2")
	vim.cmd("hi BufferLineDuplicate guifg=#8893a7")
	vim.cmd("hi BufferLineDuplicateVisible guifg=#8893a7")
	vim.cmd("hi BufferLineDuplicateSelected guifg=#8893a7")
	vim.cmd("hi markdownError guibg=none")
	-- vim.cmd("hi Comment guifg=#697281")
end

return M
