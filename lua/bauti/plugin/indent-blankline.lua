-- import blankline plugin safely
local setup, blankline = pcall(require, "indent_blankline")
if not setup then
	return
end

-- setup blankline
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

blankline.setup({
	show_end_of_line = true,
	space_char_blankline = " ",
})
