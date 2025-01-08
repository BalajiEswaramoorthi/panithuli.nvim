local colors = {
	background = "#282c34",
	foreground = "#abb2bf",
	cursor = "#528bff",
	black = "#21252b",
	red = "#e06c75",
	green = "#98c379",
	yellow = "#e5c07b",
	blue = "#61afef",
	magenta = "#c678dd",
	cyan = "#56b6c2",
	white = "#ffffff",
}

local highlights = {
	Normal = { fg = colors.foreground, bg = colors.background },
	Comment = { fg = colors.green, italic = true },
	Constant = { fg = colors.yellow },
	Identifier = { fg = colors.blue },
	Statement = { fg = colors.red },
	PreProc = { fg = colors.cyan },
	Type = { fg = colors.magenta },
	Special = { fg = colors.yellow },
	Underlined = { fg = colors.blue, underline = true },
	Error = { fg = colors.red, bg = colors.black },
}

for group, colors in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, colors)
end

return {
	colors = colors,
	highlights = highlights,
}
