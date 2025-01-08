local M = {}

function M.setup(user_config)
	-- Load color definitions
	local colors = require('colorscheme.colors')

	-- Merge user configuration with default colors
	if user_config and user_config.colors then
		for k, v in pairs(user_config.colors) do
			colors[k] = v
		end
	end

	-- Merge user configuration with default highlights
	local highlights = require('colorscheme.colors').highlights
	if user_config and user_config.highlights then
		for group, attrs in pairs(user_config.highlights) do
			highlights[group] = vim.tbl_extend('force', highlights[group] or {}, attrs)
		end
	end

	-- Set the color palette
	for group, attrs in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, attrs)
	end

	-- Set additional options
	vim.o.termguicolors = true
end

return M
