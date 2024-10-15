return {
    "Wansmer/symbol-usage.nvim",
    event = "LspAttach",
    config = function()
        require("symbol-usage").setup({
            disable = { lsp = { "pylsp", "basedpyright" } }
        })
    end
}
