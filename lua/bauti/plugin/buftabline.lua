local setup, buftabline = pcall(require, "buftabline")
if not setup then
	return
end

buftabline.setup({
	tab_format = " #{n}: #{b}#{f} #{i} ",
	show_tabpages = "always",
	icon_colors = true,
})
