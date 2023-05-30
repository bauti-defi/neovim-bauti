local opt = vim.opt

-- cursor size
opt.guicursor = ""

-- line numbers
opt.relativenumber = true
opt.number = true

-- tab & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- searching
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.scrolloff = 8

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split window settings
opt.splitright = true
opt.splitbelow = true


-- other
opt.updatetime = 50
opt.iskeyword:append("-")
