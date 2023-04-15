return {
  n = {
    -- second key is the lefthand side of the map
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
    ["<A-j>"] = { ":set paste<CR>m`o<Esc>``:set nopaste<CR>" },
    ["<A-k>"] = { ":set paste<CR>m`O<Esc>``:set nopaste<CR>" },
    ["<A-S-j>"] = { ":m .+1<CR>==" },
    ["<A-S-k>"] = { ":m .-2<CR>==" },
    ["<C-J>"] = { "o<Esc>k" },
    ["<C-K>"] = { "O<Esc>j" },
    ["<leader><leader>"] = { "c-^" },
    ["<left>"] = { ":bp<cr>" },
    ["<right>"] = { ":bn<cr>" },
    ["L"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc =
    "Next buffer" },
    ["H"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<A-k>"] = { "xkP`[V`]" },
    ["<A-j>"] = { "xp`[V`]" },
    ["<A-h>"] = { "<gv" },
    ["<A-l>"] = { ">gv" }
  },
}
