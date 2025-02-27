return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
      -- ensure these language parsers are installed
      ensure_installed = {
        -- general formats
        "gitignore",
        "json",
        "markdown",
        "markdown_inline",
        "ssh_config",
        "yaml",
        
        -- languages - scripting
        "bash",
        "lua",
        "python",
        "vimdoc",

        -- languages - frontend
        "css",
        "html",
        "javascript",
        "typescript",
        
        -- languages - frontend frameworks
        "svelte",
        "tsx",
        
        -- languages - backend / system
        "c",
        "java",
        "go",
        "odin",
        "rust",
        "zig",

        -- devops / tools
        "dockerfile",
        "nginx",
        "tmux",
        "vim",

      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
