require("artursk.remap")
require("artursk.set")
require("artursk.lazy_init")
require("artursk.hop-config")

-- Only set colorscheme in regular Neovim
if not vim.g.vscode then
    vim.cmd.colorscheme("tokyonight-night")
end
