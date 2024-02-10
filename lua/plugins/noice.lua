return {
	{
		"folke/noice.nvim",
		opts = function(_, opts)
			table.insert(opts.routes, {
				filter = {
					event = "notify",
					find = "No information available",
				},
				opts = { skip = true },
			})
			local focused = true
			vim.api.nvim_create_autocmd("FocusGained", {
				callback = function()
					focused = true
				end,
			})
			vim.api.nvim_create_autocmd("FocusLost", {
				callback = function()
					focused = false
				end,
			})
			table.insert(opts.routes, 1, {
				filter = {
					["not"] = {
						event = "lsp",
						kind = "progress",
					},
					cond = function()
						return not focused
					end,
				},
				view = "notify_send",
				opts = { stop = false },
			})

			opts.commands = {
				all = {
					-- options for the message history that you get with `:Noice`
					view = "split",
					opts = { enter = true, format = "details" },
					filter = {},
				},
			}
			-- opts.status = { lsp_progress = { event = "lsp", kind = "progress" } }
			opts.presets.lsp_doc_border = true

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "markdown",
				callback = function(event)
					vim.schedule(function()
						require("noice.text.markdown").keys(event.buf)
					end)
				end,
			})
		end,
	},
	{ "rcarriga/nvim-notify", opts = {
		timeout = 5000,
	} },
}

--return {
--	"rcarriga/nvim-notify",
--	config = function()
--		-- See https://github.com/neovim/nvim-lspconfig/issues/1931#issuecomment-1297599534
--		-- An alternative solution: https://github.com/neovim/neovim/issues/20457#issuecomment-1266782345
--		local banned_messages = { "No information available" }
--		vim.notify = function(msg, ...)
--			for _, banned in ipairs(banned_messages) do
--				if msg == banned then
--					return
--				end
--			end
--			return require("notify")(msg, ...)
--		end
--	end,
--}
