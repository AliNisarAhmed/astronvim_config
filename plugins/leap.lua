return {
  "ggandor/leap.nvim",
  event = 'BufRead',
  lazy = false,
  config = function()
    require("leap").add_default_mappings()
  end,
  dependencies = {
    "tpope/vim-repeat"
  }
}
