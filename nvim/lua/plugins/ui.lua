return {
	-- Lualine
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		config = function()
			local colors = {
				-- black = "#000000",
				-- white = "#f8efd8",
				-- red = "#fb4934",
				-- green = "#053230",
				-- blue = "#337591",
				-- darkblue = "#13324d",
				-- yellow = "#fe8019",
				-- gray = "#8c9396",
				-- darkgray = "#3c3836",
				-- lightgray = "#d3dde2",
				-- inactivegray = "#7c6f64",
				-- lightyellow = "#969c46",
				-- lightrose = "#cb7e8c",
				-- rose = "#d7c4ca",
				-- none = "none",
				black = "#000000",
				white = "#f8efd8",
				red = "#fb4934",
				green = "#053230",
				greenish = "#008787",
				blue = "#337591",
				bluish = "#4db2dd",
				darkblue = "#13324d",
				yellow = "#fe8019",
				gray = "#8c9396",
				darkgray = "#3c3836",
				lightgray = "#d3dde2",
				inactivegray = "#7c6f64",
				lightyellow = "#969c46",
				lightrose = "#cb7e8c",
				lighterrose = "#ff9eaf",
				rose = "#d7c4ca",
				none = "none",
			}
			-- local themes = {
			-- 	normal = {
			-- 		a = { fg = colors.lightgray, gui = "bold" },
			-- 		b = { fg = colors.greenish, gui = "italic" },
			-- 		c = { fg = colors.lightgray },
			-- 	},
			-- 	insert = {
			-- 		a = { fg = colors.yellow, gui = "bold" },
			-- 		b = { fg = colors.greenish, gui = "italic" },
			-- 		c = { fg = colors.lightgray },
			-- 	},
			-- 	visual = {
			-- 		a = { bg = colors.none, fg = colors.lighterrose, gui = "bold" },
			-- 		b = { bg = colors.none, fg = colors.greenish, gui = "italic" },
			-- 		c = { bg = colors.none, fg = colors.lightgray },
			-- 	},
			-- 	replace = {
			-- 		a = { bg = colors.none, fg = colors.black, gui = "bold" },
			-- 		b = { bg = colors.none, fg = colors.greenish, gui = "italic" },
			-- 		c = { bg = colors.none, fg = colors.lightgray },
			-- 	},
			-- 	command = {
			-- 		a = { bg = colors.none, fg = colors.bluish, gui = "bold" },
			-- 		b = { bg = colors.none, fg = colors.greenish, gui = "italic" },
			-- 		c = { bg = colors.none, fg = colors.lightgray },
			-- 	},
			-- 	inactive = {
			-- 		a = { bg = colors.none, fg = colors.gray, gui = "bold" },
			-- 		b = { bg = colors.none, fg = colors.greenish, gui = "italic" },
			-- 		c = { bg = colors.none, fg = colors.lightgray },
			-- 	},
			-- }
			local themes = {
				normal = {
					a = { bg = "#f9ab00", fg = "#fefad2", gui = "bold" },
					b = { bg = colors.none, fg = "#a9c45e" },
					c = { bg = colors.none, fg = colors.lightgray },
				},
				insert = {
					a = { bg = colors.red, fg = colors.black, gui = "bold" },
					b = { bg = colors.lightgray, fg = colors.white },
					c = { bg = colors.none, fg = colors.lightgray },
				},
				visual = {
					a = { bg = colors.lightrose, fg = colors.black, gui = "bold" },
					b = { bg = colors.inactivegray, fg = colors.white },
					c = { bg = colors.none, fg = colors.lightgray },
				},
				replace = {
					a = { bg = colors.red, fg = colors.black, gui = "bold" },
					b = { bg = colors.lightgray, fg = colors.white },
					c = { bg = colors.none, fg = colors.lightgray },
				},
				command = {
					a = { bg = colors.green, fg = colors.black, gui = "bold" },
					b = { bg = colors.lightgray, fg = colors.white },
					c = { bg = colors.none, fg = colors.lightgray },
				},
				inactive = {
					a = { bg = colors.darkgray, fg = colors.gray, gui = "bold" },
					b = { bg = colors.darkgray, fg = colors.gray },
					c = { bg = colors.none, fg = colors.lightgray },
				},
			}
			-- vim.cmd("hi DiagnosticError1 guifg=#9e4435 guibg=#448eb4")
			require("lualine").setup({
				options = {
					icons_enabled = true,
					disabled_filetypes = { "neo-tree" },
					theme = themes,
					-- globalstatus = true,
					-- section_separators = { left = "", right = "" },
					-- section_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					-- component_separators = { left = "", right = "" },
					component_separators = { left = "•", right = "•" },
				},
				sections = {
					lualine_b = {
						"branch",
						{
							"diagnostics",
							diagnostics_color = {
								error = { fg = "#c45441" }, -- Changes diagnostics' error color.
								warn = { fg = "#e1d03e" }, -- Changes diagnostics' warn color.
								info = { fg = "#9e4435" }, -- Changes diagnostics' info color.
								hint = { fg = "#b9c156" }, -- Changes diagnostics' hint color.
							},
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
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		keys = {
			{ "<Leader>nm", "<cmd>Neotree toggle<CR>" },
		},
		opts = {
			close_if_last_window = true,
			window = {
				width = 25,
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_hidden = false,
				},
			},
			follow_current_file = {
				leave_dirs_open = false,
			},
			-- use_libuv_file_watcher = true,
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
