-- Disable vimtex in VSCode (use LaTeX Workshop extension instead)
if vim.g.vscode then
    return {}
end

return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_compiler_latexmk_engines = {['_'] = '-xelatex'}
        vim.g.vimtex_format_enabled = 1
    end,
}

