return {
	"nolanderc/glsl_analyzer",
	config = function()
		require("lspconfig").glsl_analyzer.setup({
			filetypes = { "glsl", "frag", "vert" },
		})
	end,
}
