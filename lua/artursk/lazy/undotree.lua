-- Disable undotree in VSCode (UI plugin that doesn't work in VSCode)
if vim.g.vscode then
    return {}
end

return {
	"mbbill/undotree",

	config = function()
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end
}
