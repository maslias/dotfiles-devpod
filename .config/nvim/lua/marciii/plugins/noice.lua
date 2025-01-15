local M = {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
}

function M.config()
	local noice = require("noice")
	noice.setup({
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		presets = {
			bottom_search = true, -- use a classic bottom cmdline for search
			-- command_palette = true, -- position the cmdline and popupmenu together
			long_message_to_split = true, -- long messages will be sent to a split
			inc_rename = false, -- enables an input dialog for inc-rename.nvim
			lsp_doc_border = false, -- add a border to hover docs and signature help
		},
		commands = {
			history = {
				view = "split",
			},
			last = {
				view = "split",
			},
			errors = {
				view = "split",
			},
		},
	})
	require("telescope").load_extension("noice")
end

return M