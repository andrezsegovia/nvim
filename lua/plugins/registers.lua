return {
  "tversteeg/registers.nvim",
  cmd = "Registers",
  config = function()
    require("registers").setup({
      window = {
        border = "rounded",
        transparency = 0
      }
    })  -- Remove window config if error persists
  end,
  keys = {
    { "\"",    mode = { "n", "v" } },
    { "<C-R>", mode = "i" }
  },
  name = "registers",
}
