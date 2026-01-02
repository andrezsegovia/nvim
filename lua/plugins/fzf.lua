return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("fzf-lua").setup({
        winopts = {
          height = 0.85,
          width = 0.80,
        },
        files = {
          git_icons = true,
          file_icons = true,
        },
      })
      
      -- Keymaps
      local map = vim.keymap.set
      map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find Files" })
      map("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>", { desc = "Live Grep" })
      map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Find Buffers" })
      map("n", "<leader>fh", "<cmd>FzfLua help_tags<cr>", { desc = "Help Tags" })
      map("n", "<leader>fr", "<cmd>FzfLua oldfiles<cr>", { desc = "Recent Files" })
      map("n", "<leader>fc", "<cmd>FzfLua commands<cr>", { desc = "Commands" })
    end,
  },
}
