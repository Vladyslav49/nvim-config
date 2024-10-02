-- Leader
vim.g.mapleader = " "

-- Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Disable arrow keys
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", { noremap = true })

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>", { desc = "Open vertical split" })
vim.keymap.set("n", "\\", ":split<CR>", { desc = "Open horizontal split" })

-- Neo Tree
vim.keymap.set("n", "<leader>e", ":Neotree toggle left reveal<CR>",
    { desc = "Toggle Neotree and reveal current file" })

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Cycle to next buffer" })
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Cycle to previous buffer" })
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>", { desc = "Pick and close a buffer" })
vim.keymap.set("n", "<c-x>", ":BufferLineCloseOthers<CR>", { desc = "Close all other buffers" })

-- Todo
vim.keymap.set("n", "<leader>td", ":TodoTelescope<CR>", { desc = "View all TODO comments" })

-- Glance
vim.keymap.set("n", "gr", "<CMD>Glance references<CR>", { desc = "Show references" })
vim.keymap.set("n", "gi", "<CMD>Glance implementations<CR>", { desc = "Show implementations" })

-- Spectre
vim.keymap.set("n", "<leader>S", "<cmd>lua require('spectre').toggle()<CR>", {
    desc = "Search and replace across the entire project"
})

-- Neotest
vim.keymap.set("n", "<leader>tn", ":lua require('neotest').run.run()<CR>", { desc = "Run the nearest test" })
vim.keymap.set("n", "<leader>tf", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>",
    { desc = "Run tests in the current file" })
vim.keymap.set("n", "<leader>ts", ":lua require('neotest').summary.toggle()<CR>", { desc = "Toggle test summary" })
vim.keymap.set("n", "<leader>tnf", ":lua require('neotest').jump.next({ status = 'failed' })<CR>",
    { desc = "Jump to the next failed test" })
vim.keymap.set("n", "<leader>to", ":lua require('neotest').output.open()<CR>", { desc = "Open test output" })
vim.keymap.set("n", "<leader>ta", ":lua require('neotest').run.run(vim.fn.getcwd())<CR>", { desc = "Run all tests" })

-- Diffview
vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>", { desc = "Open project diff" })
vim.keymap.set("n", "<leader>dh", ":DiffviewFileHistory<CR>", { desc = "Show file history" })

-- Smart Open
vim.keymap.set("n", "<leader>ff", function()
    require("telescope").extensions.smart_open.smart_open()
end, { desc = "Fuzzy search files" })

-- Refactoring
vim.keymap.set({ "n", "x" }, "<leader>rr", ":lua require('refactoring').select_refactor()<CR>",
    { desc = "Open refactor menu" })

-- Live Rename
vim.keymap.set("n", "<leader>r", ":lua require('live-rename').rename({ insert = true })<CR>",
    { desc = "Rename the word (cursor at the end)" })
vim.keymap.set("n", "<leader>R", ":lua require('live-rename').rename({ text = '', insert = true })<CR>",
    { desc = "Rename with an empty word" })
