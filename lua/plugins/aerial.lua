return {
    "stevearc/aerial.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("aerial").setup({
            on_attach = function(bufnr)
                vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { desc = "Go to previous symbol", buffer = bufnr })
                vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { desc = "Go to next symbol", buffer = bufnr })
            end,
        })
        vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>", { desc = "Toggle symbols outline" })
    end

}
