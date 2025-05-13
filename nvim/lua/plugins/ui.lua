return {
	-- Lualine
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		config = function()
			local colors = {
				black = "#000000",
				white = "#f8efd8",
				red = "#fb4934",
				green = "#053230",
				greenish = "#008787",
				lightgreen = "#a9c45e",
				blue = "#337591",
				bluish = "#4db2dd",
				darkblue = "#13324d",
				gray = "#697281",
				darkgray = "#3c3836",
				lightgray = "#d3dde2",
				inactivegray = "#d0d0d0",
				lightyellow = "#916700",
				yellow = "#715306",
				lightrose = "#cb7e8c",
				lighterrose = "#ff9eaf",
				rose = "#d7c4ca",
				none = "none",
			}
			local themes = {
				normal = {
					a = { bg = "#ad5633", fg = "#fefad2", gui = "bold" },
					b = { bg = colors.none, fg = colors.none },
					c = { bg = colors.none, fg = colors.none },
					y = { bg = colors.none, fg = colors.none },
					z = { bg = colors.none, fg = colors.none },
				},
				insert = {
					a = { bg = colors.red, fg = colors.black, gui = "bold" },
					b = { bg = colors.none, fg = colors.none },
					c = { bg = colors.none, fg = colors.none },
					y = { bg = colors.none, fg = colors.gray },
					z = { bg = colors.none, fg = colors.none },
				},
				visual = {
					a = { bg = "#955558", fg = "#ffbeb8", gui = "bold" },
					b = { bg = colors.none, fg = colors.none },
					c = { bg = colors.none, fg = colors.none },
					y = { bg = colors.none, fg = colors.gray },
					z = { bg = colors.none, fg = colors.none },
				},
				replace = {
					a = { bg = colors.red, fg = colors.black, gui = "bold" },
					b = { bg = colors.none, fg = colors.none },
					c = { bg = colors.none, fg = colors.none },
					y = { bg = colors.none, fg = colors.gray },
					z = { bg = colors.none, fg = colors.none },
				},
				command = {
					a = { bg = colors.green, fg = "#86a56c", gui = "bold" },
					b = { bg = colors.none, fg = colors.none },
					c = { bg = colors.none, fg = colors.none },
					y = { bg = colors.none, fg = colors.gray },
					z = { bg = colors.none, fg = colors.none },
				},
				inactive = {
					a = { bg = colors.darkgray, fg = colors.gray, gui = "bold" },
					b = { bg = colors.none, fg = colors.none },
					c = { bg = colors.none, fg = colors.none },
					y = { bg = colors.none, fg = colors.gray },
					z = { bg = colors.none, fg = colors.none },
				},
			}
			local function copilotStatus()
				local client = vim.lsp.get_active_clients({ name = "copilot" })[1]
				if client == nil then
					return ""
				end
				if vim.tbl_isempty(client.requests) then
					return " " -- default icon whilst copilot is idle
				end

				local spinners = { "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷" }
				local ms = vim.loop.hrtime() / 1000000
				local frame = math.floor(ms / 60) % #spinners

				return spinners[frame + 1]
			end

			-- vim.cmd("hi DiagnosticError1 guifg=#9e4435 guibg=#448eb4")
			require("lualine").setup({
				options = {
					icons_enabled = true,
					disabled_filetypes = { "neo-tree" },
					theme = themes,
					-- globalstatus = true,
					-- section_separators = { left = "", right = "" },
					-- section_separators = { left = "", right = "" },
					-- section_separators = { left = "", right = "" },
					-- section_separators = { left = "", right = "•" },
					section_separators = { left = "", right = "" },
					-- component_separators = { left = "", right = "" },
					component_separators = { left = "", right = "" },
				},
				sections = {
					lualine_b = {
						{ "branch", color = { fg = colors.lightgreen, bg = colors.none } },
						{
							"diagnostics",
							always_visible = false,
							color = { bg = colors.none },
							diagnostics_color = {
								error = { fg = "#c45441", bg = colors.none }, -- Changes diagnostics' error color.
								warn = { fg = "#e1d03e", bg = colors.none }, -- Changes diagnostics' warn color.
								info = { fg = "#9e4435", bg = colors.none }, -- Changes diagnostics' info color.
								hint = { fg = "#b9c156", bg = colors.none }, -- Changes diagnostics' hint color.
							},
						},
						{
							"filetype",
							icon_only = true,
							padding = { right = 0, left = 1 },
							always_visible = false,
							color = { bg = colors.none },
						},
						{
							"filename",
							path = 1,
							color = { bg = colors.none, fg = colors.lightgray },
							-- fmt = function(str)
							-- 	-- return str:gsub("/", "  ")
							-- 	return str:gsub("/", "  ")
							-- end,
							padding = { right = 0 },
						},
					},
					lualine_c = {},
					lualine_x = {},
					lualine_z = {},
					lualine_y = {
						{
							function()
								return require("supermaven-status").status_string()
							end,
						},
						{
							copilotStatus,
							padding = {
								-- left = 0,
								right = 1,
							},
						},
						{
							function()
								local venv = os.getenv("VIRTUAL_ENV")
								if venv then
									local name = string.match(venv, "([^/]+)$")
									-- return string.format("🐍 %s", name)
									return string.format("🐍", name)
								end
								return ""
							end,
							cond = function() -- Extract just the env name
								return os.getenv("VIRTUAL_ENV") ~= nil
							end,
							color = { fg = "#00d26a" },
							padding = { left = 0, right = 0 },
						},
					},
				},
			})
			vim.cmd("hi lualine_transitional_lualine_a_normal_to_lualine_c_normal guifg=#ffffff")
		end,
	},
	-- Neotree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		keys = {
			{ "<Leader>nm", "<cmd>Neotree toggle<CR>" },
		},
		opts = {
			close_if_last_window = true,
			use_default_mappings = false,
			window = {
				width = 25,
				mappings = {
					["<space>"] = {
						"toggle_node",
						nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use
					},
					["<2-LeftMouse>"] = "open",
					["<cr>"] = "open",
					["<esc>"] = "cancel",
					["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
					["l"] = "focus_preview",
					["S"] = "open_split",
					["s"] = "open_vsplit",
					["w"] = "open_with_window_picker",
					["C"] = "close_node",
					["z"] = "close_all_nodes",
					["a"] = {
						"add",
						config = {
							show_path = "none",
						},
					},
					["A"] = "add_directory",
					["d"] = "delete",
					["r"] = "rename",
					["b"] = "rename_basename",
					["y"] = "copy_to_clipboard",
					["x"] = "cut_to_clipboard",
					["p"] = "paste_from_clipboard",
					["c"] = "copy",
					["m"] = "move",
					["q"] = "close_window",
					["R"] = "refresh",
					["?"] = "show_help",
					["<"] = "prev_source",
					[">"] = "next_source",
					["i"] = "show_file_details",
				},
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_hidden = false,
				},
				window = {
					mappings = {
						["<bs>"] = "navigate_up",
						["."] = "set_root",
					},
				},
			},
			follow_current_file = {
				leave_dirs_open = false,
			},
			default_component_configs = {
				icon = {},
			},
		},
	},

	-- Bufferline
	-- {
	-- 	"akinsho/bufferline.nvim",
	-- 	lazy = false,
	-- 	opts = {
	-- 		options = {
	-- 			indicator = { icon = "|" },
	-- 			show_buffer_close_icons = false,
	-- 			separator_style = { "", "" }, -- Removes buffer separators
	-- 			offsets = {
	-- 				{
	-- 					filetype = "neo-tree",
	-- 					text = "NeoTree",
	-- 					text_align = "left",
	-- 					separator = "▏",
	-- 					highlight = "Directory",
	-- 				},
	-- 			},
	-- 		},
	-- 		highlights = {
	-- 			fill = {
	-- 				bg = "",
	-- 			},
	-- 			background = { -- buffer background
	-- 				bg = "",
	-- 				fg = "#8893a7",
	-- 			},
	-- 			buffer_visible = {
	-- 				bg = "",
	-- 				fg = "#ffffff",
	-- 			},
	-- 			buffer_selected = {
	-- 				bg = "",
	-- 				fg = "#f2f2f2",
	-- 			},
	-- 			tab = {
	-- 				bg = "",
	-- 			},
	-- 			tab_selected = {
	-- 				bg = "",
	-- 			},
	-- 			close_button = {
	-- 				bg = "",
	-- 			},
	-- 			close_button_visible = {
	-- 				bg = "",
	-- 			},
	-- 			close_button_selected = {
	-- 				bg = "",
	-- 			},
	-- 			separator = {
	-- 				bg = "",
	-- 				fg = "",
	-- 			},
	-- 			separator_visible = {
	-- 				bg = "",
	-- 				fg = "",
	-- 			},
	-- 			separator_selected = {
	-- 				bg = "",
	-- 				fg = "",
	-- 			},
	-- 			trunc_marker = {
	-- 				bg = "",
	-- 				fg = "",
	-- 			},
	-- 			offset_separator = {
	-- 				bg = "",
	-- 				-- fg = ""
	-- 			},
	-- 			indicator_visible = {
	-- 				bg = "",
	-- 				fg = "",
	-- 			},
	-- 			indicator_selected = {
	-- 				bg = "",
	-- 				fg = "",
	-- 			},
	-- 			modified = {
	-- 				bg = "",
	-- 			},
	-- 			modified_visible = {
	-- 				bg = "",
	-- 			},
	-- 			modified_selected = {
	-- 				bg = "",
	-- 			},
	-- 		},
	-- 	},
	-- 	keys = {
	-- 		{ "<S-l>", "<cmd>BufferLineCycleNext<CR>" },
	-- 		{ "<S-h>", "<cmd>BufferLineCyclePrev<CR>" },
	-- 	},
	-- },
}
