return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  { import = "nvchad.blink.lazyspec" },
  {
    "Saghen/blink.cmp",
    opts = require "configs.blink",
  },

  {
    "johnfrankmorgan/whitespace.nvim",
  },

  {
    "OXY2DEV/markview.nvim",
    lazy = false,

  },

  {
    "ahmedkhalf/project.nvim",
    lazy = false,
    keys = {
      { "<leader>pp", "<cmd>Telescope projects<cr>", desc = "Projects overview" },
    },
    config = function()
      require("project_nvim").setup()
    end
  },

  {
    "echasnovski/mini.cursorword",
    version = false,
    lazy = false,
    config = function ()
      require("mini.cursorword").setup()
    end
  },

  -- Telescope settings
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            theme = "dropdown",
          },
          -- live_grep = {
          --   theme = "dropdown",
          -- },
        }
      })
      require("telescope").load_extension('projects')
      -- require("telescope").extensions.projects.configurations()
    end,
  },

  -- Symbols outline
  {
    "stevearc/aerial.nvim",
    keys = {
      { "<leader>lS", "<cmd>AerialToggle<cr>", desc = "Toggle symbols outline" },
    },
    opts = require("configs.aerial"),
  },

  -- Git tool
  {
    "lewis6991/gitsigns.nvim",
    keys = {
      { "<leader>gj", "<cmd>Gitsigns next_hunk<cr>", desc = "Jump to next hunk" },
      { "<leader>gk", "<cmd>Gitsigns prev_hunk<cr>", desc = "Jump to previous hunk" },
      { "<leader>gl", "<cmd>Gitsigns blame_line<cr>", desc = "Git blame cursor line" },
      { "<leader>gd", "<cmd>Gitsigns diffthis<cr>", desc = "Git diff current file" },
    },
    -- config = function ()
    --   require "configs.gitsigns"
    -- end,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  }
}
