require('catppuccin').setup({
    disable_background = true,
    flavour = "mocha", -- latte, frappe, macchiato, mocha
})

function ColorMyPencils(color) 
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	-- set background transparent
     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end


ColorMyPencils()

