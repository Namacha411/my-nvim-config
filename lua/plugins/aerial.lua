return {
	"stevearc/aerial.nvim",
	-- Optional dependencies
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	event = {
		"BufReadPost",
		"BufNewFile",
		"BufWritePre",
	},
	init = function()
    -- main
		require("telescope").load_extension("aerial")
	end,
	opts = {
		-- Determines how the aerial window decides which buffer to display symbols for
		--   window - aerial window will display symbols for the buffer in the window from which it was opened
		--   global - aerial window will display symbols for the current window
		attach_mode = "global",
		-- Keymaps in aerial window. Can be any value that `vim.keymap.set` accepts OR a table of keymap
		-- options with a `callback` (e.g. { callback = function() ... end, desc = "", nowait = true })
		-- Additionally, if it is a string that matches "actions.<name>",
		-- it will use the mapping at require("aerial.actions").<name>
		-- Set to `false` to remove a keymap
		keymaps = false,
		-- Control which windows and buffers aerial should ignore.
		-- Aerial will not open when these are focused, and existing aerial windows will not be updated
		ignore = {
			-- Ignore unlisted buffers. See :help buflisted
			unlisted_buffers = false,

			-- Ignore diff windows (setting to false will allow aerial in diff windows)
			diff_windows = false,
		},
		lsp = {
			-- If true, fetch document symbols when LSP diagnostics update.
			diagnostics_trigger_update = true,
		},
  }
}
