return {
    "MysticalDevil/inlay-hints.nvim",
    config = function()
        require("inlay-hints").setup({})
        require("lspconfig").gopls.setup({
            settings = {
                gopls = {
                    hints = {
                        rangeVariableTypes = true,
                        parameterNames = true,
                        constantValues = true,
                        assignVariableTypes = true,
                        compositeLiteralFields = true,
                        compositeLiteralTypes = true,
                        functionTypeParameters = true,
                    },
                },
            },
        })
    end
}
