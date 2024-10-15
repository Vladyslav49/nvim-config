return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "typos_lsp",
                    -- python
                    "ruff",
                    "pyright",
                    "basedpyright",
                    "pylsp",
                    -- go
                    "gopls",
                    -- lua
                    "lua_ls",
                }
            })
        end
    }
}
