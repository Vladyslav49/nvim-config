return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.typos_lsp.setup {}

            -- python
            lspconfig.ruff.setup {}
            lspconfig.pyright.setup {
                settings = {
                    python = {
                        analysis = {
                            typeCheckingMode = "off",
                        },
                    },
                },
            }
            lspconfig.pylsp.setup {
                settings = {
                    pylsp = {
                        plugins = {
                            pylsp_mypy = {
                                enabled = true,
                                overrides = { "--enable-incomplete-feature", "NewGenericSyntax", true },
                            },
                            rope_autoimport = {
                                enabled = true,
                            }
                        },
                    },
                },
            }

            -- go
            lspconfig.gopls.setup {}

            -- lua
            lspconfig.lua_ls.setup {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            }

            vim.api.nvim_create_autocmd("BufWritePre", {
                callback = function()
                    vim.lsp.buf.format({ async = false })
                end,
            })

            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspConfig", {}),
                callback = function(ev)
                    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition", buffer = ev.buf })
                    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition,
                        { desc = "Go to type definition", buffer = ev.buf })
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover info", buffer = ev.buf })
                    vim.keymap.set({ "n", "v" }, "<Leader>la", vim.lsp.buf.code_action,
                        { desc = "Show code actions", buffer = ev.buf })
                end,
            })
        end
    }
}
