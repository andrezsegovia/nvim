-- Exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>")

-- Disable ESC in insert mode
vim.keymap.set("i", "<ESC>", "<nop>")

-- Disable arrow keys in all modes
vim.keymap.set({"n", "v", "i"}, "<Up>", "<nop>")
vim.keymap.set({"n", "v", "i"}, "<Down>", "<nop>")
vim.keymap.set({"n", "v", "i"}, "<Left>", "<nop>")
vim.keymap.set({"n", "v", "i"}, "<Right>", "<nop>")

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Visual mode indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Search in current file
vim.keymap.set("n", "<leader>fs", "<cmd>FzfLua blines<cr>", { desc = "Search in current file" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Previous buffer" })

-- Clear search highlighting with double Escape
vim.keymap.set("n", "<ESC><ESC>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlighting" })

-- Spell checking
vim.keymap.set("n", "<leader>sp", "<cmd>set spell!<cr>", { desc = "Toggle spell check" })
vim.keymap.set("n", "]s", "]s", { desc = "Next misspelled word" })
vim.keymap.set("n", "[s", "[s", { desc = "Previous misspelled word" })
vim.keymap.set("n", "z=", "z=", { desc = "Spelling suggestions" })

-- File explorer
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file explorer" })

-- Debug
vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", "<cmd>DapContinue<cr>", { desc = "Continue" })
vim.keymap.set("n", "<leader>di", "<cmd>DapStepInto<cr>", { desc = "Step into" })
vim.keymap.set("n", "<leader>do", "<cmd>DapStepOver<cr>", { desc = "Step over" })
vim.keymap.set("n", "<leader>dO", "<cmd>DapStepOut<cr>", { desc = "Step out" })
vim.keymap.set("n", "<leader>dt", "<cmd>DapTerminate<cr>", { desc = "Terminate" })
