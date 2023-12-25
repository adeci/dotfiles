--setup config for tokyonight theme
require("tokyonight").setup({
	style = "night",
	transparent = true,
})

function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
