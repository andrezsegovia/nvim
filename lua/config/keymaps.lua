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

-- Obsidian
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "Create new note" })
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<cr>", { desc = "Open note" })
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<cr>", { desc = "Search notes" })
vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<cr>", { desc = "Quick switch notes" })
vim.keymap.set("n", "<leader>of", "<cmd>ObsidianFollowLink<cr>", { desc = "Follow link" })
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<cr>", { desc = "Show backlinks" })
vim.keymap.set("n", "<leader>or", "<cmd>ObsidianRename<cr>", { desc = "Rename note" })
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTags<cr>", { desc = "Show tags" })
vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<cr>", { desc = "Show links" })
vim.keymap.set("n", "<leader>ow", "<cmd>ObsidianWorkspace<cr>", { desc = "Switch workspace" })
vim.keymap.set("n", "<leader>od", "<cmd>ObsidianDailies<cr>", { desc = "Open daily notes" })
vim.keymap.set("n", "<leader>oD", "<cmd>ObsidianToday<cr>", { desc = "Open today's note" })
vim.keymap.set("n", "<leader>oy", "<cmd>ObsidianYesterday<cr>", { desc = "Open yesterday's note" })
vim.keymap.set("n", "<leader>oT", "<cmd>ObsidianTomorrow<cr>", { desc = "Open tomorrow's note" })
vim.keymap.set("n", "<leader>oi", "<cmd>ObsidianPasteImg<cr>", { desc = "Paste image" })
vim.keymap.set("n", "<leader>oL", "<cmd>ObsidianLinkNew<cr>", { desc = "Create link to new note" })
vim.keymap.set("v", "<leader>oL", "<cmd>ObsidianLinkNew<cr>", { desc = "Create link to new note" })
vim.keymap.set("n", "<leader>oe", "<cmd>ObsidianExtractNote<cr>", { desc = "Extract note" })
vim.keymap.set("v", "<leader>oe", "<cmd>ObsidianExtractNote<cr>", { desc = "Extract note" })
vim.keymap.set("n", "<leader>oN", "<cmd>ObsidianTemplate<cr>", { desc = "Insert template" })
vim.keymap.set("n", "<leader>od", "<cmd>ObsidianToday<cr>", { desc = "Today daily note" })

-- File explorer
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file explorer" })

-- Debug
vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", "<cmd>DapContinue<cr>", { desc = "Continue" })
vim.keymap.set("n", "<leader>di", "<cmd>DapStepInto<cr>", { desc = "Step into" })
vim.keymap.set("n", "<leader>do", "<cmd>DapStepOver<cr>", { desc = "Step over" })
vim.keymap.set("n", "<leader>dO", "<cmd>DapStepOut<cr>", { desc = "Step out" })
vim.keymap.set("n", "<leader>dt", "<cmd>DapTerminate<cr>", { desc = "Terminate" })

vim.keymap.set('n', 'z=', function()
  require('telescope.builtin').spell_suggest(require('telescope.themes').get_cursor({
    previewer = false,
    layout_config = {
      width = 50,
      height = 15,
    }
  }))
end)
