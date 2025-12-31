-- :help options
local options = {
	backup = false,				        -- creates a backup file
	clipboard = "unnamedplus",		-- allows neovim to access the system clipboard
	fileencoding = "utf-8",			  -- the encoding written to a file
	hlsearch = true,			        -- highlight all matches on previous search patterns
	ignorecase = true,			      -- ignore case in search patterns
  mouse = "a",                  -- allows the mouse to be use in neovim
  swapfile = false,             -- creates a swap file
	undofile = true,              -- allow persisten undo
	writebackup = false,          -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	expandtab = true,             -- convert tabs to spaces
	shiftwidth = 2,               -- the number of spaces inserted for each indentation
	tabstop = 2,                  -- insert two spaces for a tab
	cursorline = true,            -- highlight the current line
  number = true,                -- set numbered lines
  relativenumber = true,        -- set relative numbered lines
  scrolloff = 8,                -- set the nimimal number of lines to keep above and below the cursor
  sidescrolloff = 8,            -- set the minimal number of columns to keep to the left and to the right of the cursor 
  guifont = "nonospace:h17"     -- the font used in graphical neovim applications


}

for k, v in pairs(options) do
	vim.opt[k] = v
end
