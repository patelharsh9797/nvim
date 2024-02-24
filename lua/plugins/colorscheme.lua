return {
	{
		"catppuccin/nvim",
		lazy = true,
		name = "catppuccin",
		opts = {
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			transparent_background = true,
			transparent = true,
			integrations = {
				aerial = true,
				alpha = true,
				cmp = true,
				dashboard = true,
				flash = true,
				gitsigns = true,
				headlines = true,
				illuminate = true,
				indent_blankline = { enabled = true },
				leap = true,
				lsp_trouble = true,
				mason = true,
				markdown = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				navic = { enabled = true, custom_bg = "lualine" },
				neotest = true,
				neotree = true,
				noice = true,
				notify = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
		},
	},
	{
		"folke/tokyonight.nvim",
		opts = {
			style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
	-- {
	-- 	"scottmckendry/cyberdream.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("cyberdream").setup({
	-- 			-- Recommended - see "Configuring" below for more config options
	-- 			transparent = true,
	-- 			italic_comments = true,
	-- 			hide_fillchars = true,
	-- 			borderless_telescope = true,
	-- 		})
	-- 		-- vim.cmd("colorscheme cyberdream") -- set the colorscheme
	-- 	end,
	-- },
	{
		"sainnhe/sonokai",
		priority = 1000,
		config = function()
			vim.g.sonokai_transparent_background = "1"
			vim.g.sonokai_enable_italic = "1"
			vim.g.sonokai_style = "andromeda" -- a𝐭𝐥𝐚𝐧𝐭𝐢𝐬, a𝐧𝐝𝐫𝐨𝐦𝐞𝐝𝐚, s𝐡𝐮𝐬𝐢𝐚, m𝐚𝐢𝐚, e𝐬𝐩𝐫𝐞𝐬𝐬𝐨
			-- vim.cmd.colorscheme("sonokai")
			require("notify").setup({
				background_colour = "#0f0f0f",
			})
		end,
	},
}
