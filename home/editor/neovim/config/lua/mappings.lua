local map = vim.keymap.set
local wk = require("which-key")

wk.register({
	e = { "<cmd>NvimTreeFocus<cr>", "Focus Explorer" },
	g = {
		name = "git",
		l = { "<cmd>LazyGit<cr>", "Open Lazy Git" },
	},
	f = {
		name = "file",
		f = { "<cmd>Telescope find_files<cr>", "Find Files" },
		w = { "<cmd>Telescope live_grep<cr>", "Global Search" },
		b = { "<cmd>Telescope buffers<cr>", "Search buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "Search Help" },
	},
}, { prefix = "<leader>" })

map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle Explorer" })
