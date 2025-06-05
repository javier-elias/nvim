return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilites = require("cmp_nvim_lsp").default_capabilities()
			require("lspconfig").lua_ls.setup({
				capabilites = capabilites
			})
		end,
	},

	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
--			automatic_enable = false
		end,
	},
}
