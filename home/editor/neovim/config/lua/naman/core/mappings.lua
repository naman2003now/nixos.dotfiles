local map = vim.keymap.set
local wk = require("which-key")

wk.register({
	e = { "<cmd>NvimTreeFocus<cr>", "Focus Explorer" },
	o = {
		name = "open",
		g = { "<cmd>LazyGit<cr>", "Open Lazy Git" },
	},
	f = {
		name = "find",
		f = { "<cmd>Telescope find_files<cr>", "Find Files" },
		w = { "<cmd>Telescope live_grep<cr>", "Global Search" },
		b = { "<cmd>Telescope buffers<cr>", "Search buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "Search Help" },
	},
}, { prefix = "<leader>" })

map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle Explorer" })

-- Copilot
map("i", "<C-CR>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

-- Tmux Window Navigation
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Navigate Left" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Navigate Down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Navigate Up" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Navigate Right" })

-- Resize Windows
map("n", "<C-Up>", ":resize +2<CR>", { desc = "Resize Up" })
map("n", "<C-Down>", ":resize -2<CR>", { desc = "Resize Down" })
map("n", "<C-Left>", ":vertical resize +2<CR>", { desc = "Resize Left" })
map("n", "<C-Right>", ":vertical resize -2<CR>", { desc = "Resize Right" })
