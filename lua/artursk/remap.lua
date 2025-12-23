vim.g.mapleader = " "

-- VSCode or Regular Neovim diagnostics bindings
if vim.g.vscode then
    local vscode = require('vscode')
    vim.keymap.set("n", "]g", function() vscode.action('editor.action.marker.nextInFiles') end)
    vim.keymap.set("n", "[g", function() vscode.action('editor.action.marker.prevInFiles') end)
else
    vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

    vim.keymap.set("n", "]g", function()
        vim.diagnostic.jump({ count = 1, float = true})
    end)

    vim.keymap.set("n", "[g", function()
        vim.diagnostic.jump({ count = -1, float = true})
    end)
end

vim.keymap.set("n", "gi", vim.lsp.buf.references)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename)
vim.keymap.set("n", "<F3>", vim.lsp.buf.code_action)
