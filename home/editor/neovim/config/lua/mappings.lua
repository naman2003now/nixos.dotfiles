local map = vim.keymap.set

-- nvim-tree mappings
map("n", "<leader>e", "<cmd>NvimTreeFocus<cr>", { desc = "Focus Explorer" })
map("n", "C-n", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle Explorer" })
