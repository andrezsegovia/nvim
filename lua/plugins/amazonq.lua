return {
  "awslabs/amazonq.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("amazonq").setup({
      ssoStartUrl = 'https://twdc-qdeveloper.awsapps.com/start'
    })
  end,
}
