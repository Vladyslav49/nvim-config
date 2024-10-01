return {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        local refactoring = require("refactoring")
        refactoring.setup({})
        vim.keymap.set({ "n", "x" }, "<leader>rr", refactoring.select_refactor)
    end
}
