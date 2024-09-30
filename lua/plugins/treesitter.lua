return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "lua", "python", "go" },
				highlight = { enable = true }
			})
		end
	}
}
