-- Options
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

-- Tab settings
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- UI
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.cursorline = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Other
opt.termguicolors = true
opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- Markdown concealing
opt.conceallevel = 2
opt.concealcursor = "niv"

-- Spell checking
opt.spell = true
opt.spelllang = { "en", "es" }
