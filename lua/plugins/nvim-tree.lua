return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- nvim-tree.lua
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "NvimTreeToggle", silent = true })
    vim.keymap.set("n", "<leader>E", ":NvimTreeFindFile<CR>", { desc = "NvimTreeFindFile", silent = true })
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        preserve_window_proportions = false,
        relativenumber = true,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
      git = {
        enable = true,
        ignore = false,
        timeout = 500,
      },
      actions = {
        open_file = {
          resize_window = false,
        },
      },
    })
  end,
}
