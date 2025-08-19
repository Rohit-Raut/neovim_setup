return {
  "nvim-neo-tree/neo-tree.nvim",
  -- You might need these dependencies if you don't have them elsewhere
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- For file icons
    "MunifTanjim/nui.nvim",
  },
  -- A keymap to easily toggle the file explorer
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle file explorer" },
  },
  opts = {
    window = {
      position = "right",
      mappings = {
        ["Y"] = "none", -- Disables the default mapping for 'Y'
      },
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
          ".DS_Store",
        },
        always_show = {
          ".env",
        },
      },
    },
  },
}
