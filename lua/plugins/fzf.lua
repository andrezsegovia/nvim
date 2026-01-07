return {
  {
    "ibhagwan/fzf-lua",
    enabled = false,
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
      
    end,
  },
}
