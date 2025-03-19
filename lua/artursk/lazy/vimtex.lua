return {
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    config = function()
        vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
        vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
        vim.g.vimtex_compiler_latexmk_engines = {
         ['_']                = {'-pdf'},
         ['pdfdvi']           = {'-pdfdvi'},
         ['pdfps']            = {'-pdfps'},
         ['pdflatex']         = {'-pdf'},
         ['luatex']           = {'-lualatex'},
         ['lualatex']         = {'-lualatex'},
         ['xelatex']          = {'-xelatex'},
         ['context (pdftex)'] = {'-pdf -pdflatex=texexec'},
         ['context (luatex)'] = {'-pdf -pdflatex=context'},
         ['context (xetex)']  = {'-pdf -pdflatex=""texexec --xtx""'},
        }
    end,
    keys = {
        { "<localLeader>l", "", desc = "+vimtex", ft = "tex" },
    },
}

