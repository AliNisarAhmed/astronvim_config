return {
  "scalameta/nvim-metals",
  ft = { "scala" },
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("metals").initialize_or_attach({})
  end
}
