return {
  "awslabs/amazonq.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("amazonq").setup({
      ssoStartUrl = 'place you SSO URL here'
    })
  end,
}
