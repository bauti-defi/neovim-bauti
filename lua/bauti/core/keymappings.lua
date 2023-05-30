vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally

keymap.set("n", "<leader>to", ":tabnew<CR>", { silent = true }) -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", { silent = true }) -- close current tab
keymap.set("n", "<leader>]", ":tabn<CR>", { silent = true }) --  go to next tab
keymap.set("n", "<leader>[", ":tabp<CR>", { silent = true }) --  go to previous tab
keymap.set("n", "<leader>h", "<C-w>h", { silent = true }) -- go to left window
keymap.set("n", "<leader>j", "<C-w>j", { silent = true }) -- go to bottom window
keymap.set("n", "<leader>k", "<C-w>k", { silent = true }) -- go to top window
keymap.set("n", "<leader>l", "<C-w>l", { silent = true }) -- go to right window

-- nvim-tree
keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>", { silent = true })
keymap.set("n", "<leader>bc", ":NvimTreeCollapse<CR>", { silent = true })

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>jk", "i")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
