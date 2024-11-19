return {
  "chrisgrieser/nvim-spider",
  keys = {
    {
      "e",
      "<cmd>lua require('spider').motion('e')<CR>",
      mode = { "n", "o", "x" },
    },
    {
      "b",
      "<cmd>lua require('spider').motion('b')<CR>",
      mode = { "n", "o", "x" },
      { desc = "Spider-b" },
    },
  },
}

