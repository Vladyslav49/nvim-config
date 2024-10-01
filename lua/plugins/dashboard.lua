return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("dashboard").setup({
            theme = "hyper",
            config = {
                week_header = {
                    enable = true,
                },
                shortcut = {
                    {
                        icon = "",
                        icon_hl = "@variable",
                        desc = " Files",
                        group = "Label",
                        action = "Telescope smart_open",
                        key = "f",
                    },
                    {
                        icon = "",
                        icon_hl = "@variable",
                        desc = " Grep",
                        group = "Label",
                        action = "Telescope live_grep",
                        key = "g",
                    },
                    {
                        icon = "",
                        icon_hl = "@variable",
                        desc = " Tree",
                        group = "Label",
                        action = "Neotree toggle left reveal",
                        key = "n",
                    },
                },
            },
        })
    end
}
