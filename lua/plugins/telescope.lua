return {
  "nvim-telescope/telescope.nvim",
  dependencies = { 
    "nvim-lua/plenary.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  config = function()
    require("telescope").setup{}
    vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Live grep" })
    vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Find buffers" })
    vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "Help tags" })
    vim.keymap.set("n", "<leader>fj", function()
      require("telescope.builtin").live_grep({ type_filter = "java" })
    end, { desc = "Live grep in Java files" })
    vim.keymap.set("n", "<leader>ft", function()
      local file_type = vim.fn.input("File type (e.g., java, py, js): ")
      if file_type ~= "" then
        require("telescope.builtin").live_grep({ type_filter = file_type })
      end
    end, { desc = "Live grep by file type" })
  end,
}
