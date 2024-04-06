return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup(
      {
        ensure_installed = {
          "eex",
          "elixir",
          "erlang",
          "heex",
          "html"
        },
        auto_install = true,
        highlight = {
          enable = true
        }
      }
    )
  end
}
