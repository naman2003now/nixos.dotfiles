local map = vim.keymap.set
local wk = require("which-key")

wk.register({
	e = { "<cmd>NvimTreeFocus<cr>", "Focus Explorer" },
	g = {
		name = "git",
		l = { "<cmd>LazyGit<cr>", "Open Lazy Git" },
	},
}, { prefix = "<leader>" })

map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle Explorer" })
