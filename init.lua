-- Basic Config
require("core/configs")
require("core/mappings")
require("core.lazy")

-- Neovide
if vim.g.neovide then
    vim.opt.guifont = "JetBrainsMono Nerd Font:h11"
end
