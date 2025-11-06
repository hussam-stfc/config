return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Optional, for file icons
  },
  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
    })
    
    -- Optional: Set up keymaps here as well
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
    vim.keymap.set('n', '<leader>fe', ':NvimTreeFocus<CR>', { silent = true })
  end,
}
