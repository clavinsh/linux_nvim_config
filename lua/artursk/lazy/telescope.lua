if vim.g.vscode then
    vim.keymap.set('n', '<leader>pf', function()
        vim.fn.VSCodeNotify('workbench.action.quickOpen')
    end, { desc = 'VSCode Quick Open (Find Files)' })

    vim.keymap.set('n', '<leader>ps', function()
        vim.fn.VSCodeNotify('workbench.action.findInFiles')
    end, { desc = 'VSCode Find in Files (Grep)' })

    return {}
end

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}
