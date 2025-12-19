-- Disable colorscheme in VSCode (uses VSCode theme)
if vim.g.vscode then
    return {}
end

return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        styles = {
            comments = { italic = false },
            keywords = { italic = false },
        },
    },
}
