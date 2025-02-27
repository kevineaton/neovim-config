return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local td = require("todo-comments")

    local km = vim.keymap

    km.set("n", "]t", function()
      td.jump_next()
      end, { desc = "Next todo" }
    )

    km.set("n", "[t", function()
      td.jump_prev()
      end, { desc = "Previous todo" })

    td.setup()
  end,
}
