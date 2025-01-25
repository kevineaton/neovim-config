vim.g.mapleader = " " -- leader is now space

local km = vim.keymap -- conciseness

-- keymaps include
-- jk = exit insert mode
-- space nh = clear search highlights

km.set("i", "jk", "<ESC", { desc = "Exit insert mode with jk" })
km.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
km.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
km.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management

km.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
km.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
km.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
km.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

km.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
km.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
km.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
km.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
km.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

