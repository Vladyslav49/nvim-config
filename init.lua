-- Basic Config
require("core/configs")
require("core/mappings")
require("core.lazy")

-- Neovide
if vim.g.neovide then
    vim.g.neovide_transparency = 0
end
