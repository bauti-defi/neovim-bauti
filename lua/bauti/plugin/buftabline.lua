local setup, buftabline = pcall(require, "buftabline")
if not setup then
	return
end

vim.api.nvim_command("highlight BrightCurrent guifg=#ffffff guibg=#fc514e")
vim.api.nvim_command("highlight BrightNormal guifg=#ffffff guibg=#a1cd5e")
vim.api.nvim_command("highlight BrightActive guifg=#ffffff guibg=#82aaff")
vim.api.nvim_command("highlight BrightSpacing guifg=#011627 guibg=#011627")
vim.api.nvim_command("highlight BrightModifiedCurrent guifg=#ffffff guibg=#fc514e")
vim.api.nvim_command("highlight BrightModifiedNormal guifg=#ffffff guibg=#011627")
vim.api.nvim_command("highlight BrightModifiedActive guifg=#ffffff guibg=#fc514e")
vim.api.nvim_command("highlight BrightTabpageCurrent guifg=#ffffff guibg=#fc514e")
vim.api.nvim_command("highlight BrightTabpageNormal guifg=#ffffff guibg=#a1cd5e")
vim.api.nvim_command("highlight BrightTaskbar guifg=#ffffff guibg=#7f0080")

buftabline.setup({
	tab_format = " #{n}: #{b}#{f} #{i} ",
	show_tabpages = "always",
	icon_colors = true,
	hlgroups = {
		current = "BrightCurrent",
		normal = "BrightNormal",
		active = "BrightActive",
		spacing = "BrightSpacing",
		modified_current = "BrightModifiedCurrent",
		modified_normal = "BrightModifiedNormal",
		modified_active = "BrightModifiedActive",
		tabpage_current = "BrightTabpageCurrent",
		tabpage_normal = "BrightTabpageNormal",
	},
})

local b = require("buftabline.buffers")

-- closes all tabs except current
function closeAllExceptCurrent()
	local current_index = b.get_current_index()
	if not current_index then
		return
	end

	local buffers = b.get_numbers()
	local current_buffer = buffers[current_index]
	for _, buffer in ipairs(buffers) do
		if buffer ~= current_buffer then
			vim.api.nvim_buf_delete(buffer, { force = true })
		end
	end
	vim.cmd("redrawtabline")
end

vim.keymap.set("n", "<leader>c", ":lua closeAllExceptCurrent()<CR>", { noremap = true, silent = true })
