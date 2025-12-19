vim.g.mapleader = " "

-- Only set Netrw keybinding in regular Neovim
if not vim.g.vscode then
    vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
end

-- LSP keybindings only for regular Neovim (VSCode has its own)
if not vim.g.vscode then
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

    vim.keymap.set("n", "gi", vim.lsp.buf.references)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    
    vim.keymap.set("n", "<F2>", vim.lsp.buf.rename)
    vim.keymap.set("n", "<F3>", vim.lsp.buf.code_action)

    vim.keymap.set("n", "]g", function()
        vim.diagnostic.jump({ count = 1, float = true})
    end)

    vim.keymap.set("n", "[g", function()
        vim.diagnostic.jump({ count = -1, float = true})
    end)
end
